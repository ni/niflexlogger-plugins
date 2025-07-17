"""A default measurement with an array in and out."""

import logging
import pathlib
import sys
from collections.abc import Iterable

import click
import numpy as np
import ni_measurement_plugin_sdk_service as nims

script_or_exe = sys.executable if getattr(sys, "frozen", False) else __file__
service_directory = pathlib.Path(script_or_exe).resolve().parent
measurement_service = nims.MeasurementService(
    service_config_path=service_directory / "ComplexImpedance.serviceconfig",
    ui_file_paths=[service_directory / "ComplexImpedance.measui"],
)


@measurement_service.register_measurement
@measurement_service.configuration("Voltage Channel", nims.DataType.DoubleArray1D, [0.0])
@measurement_service.configuration("Current Channel", nims.DataType.DoubleArray1D, [0.0])
@measurement_service.configuration("Sampling Rate (Hz)", nims.DataType.Float, 0.0)
@measurement_service.output("Resistance", nims.DataType.DoubleArray1D)
@measurement_service.output("Reactance", nims.DataType.DoubleArray1D)
def measure(
    voltage_input: Iterable[float],
    current_input: Iterable[float],
    sampling_rate: float,
    ) -> tuple[
        Iterable[float],
        Iterable[float]
    ]:
    # Convert inputs to numpy arrays
    voltage = np.array(voltage_input)
    current = np.array(current_input)
    
    # Ensure we have the same length arrays
    min_length = min(len(voltage), len(current))
    voltage = voltage[:min_length]
    current = current[:min_length]
    
    # Avoid division by zero
    if min_length == 0:
        return ([], [])
    
    # Calculate FFT of voltage and current signals
    voltage_fft = np.fft.fft(voltage)
    current_fft = np.fft.fft(current)
    
    # Calculate complex impedance Z = V/I in frequency domain
    # Avoid division by zero in current
    epsilon = 1e-12
    current_fft_safe = np.where(np.abs(current_fft) < epsilon, epsilon, current_fft)
    impedance_fft = voltage_fft / current_fft_safe
    
    # Convert back to time domain
    impedance_complex = np.fft.ifft(impedance_fft)
    
    # Extract resistance (real part) and reactance (imaginary part)
    resistance = np.real(impedance_complex)
    reactance = np.imag(impedance_complex)
    
    return (resistance.tolist(), reactance.tolist())


@click.command
@click.option(
    "-v",
    "--verbose",
    count=True,
    help="Enable verbose logging. Repeat to increase verbosity.",
)
def main(verbose: int) -> None:
    """Host the ComplexImpedance service."""
    if verbose > 1:
        level = logging.DEBUG
    elif verbose == 1:
        level = logging.INFO
    else:
        level = logging.WARNING
    logging.basicConfig(format="%(asctime)s %(levelname)s: %(message)s", level=level)

    with measurement_service.host_service():
        input("Press enter to close the measurement service.\n")


if __name__ == "__main__":
    main()
