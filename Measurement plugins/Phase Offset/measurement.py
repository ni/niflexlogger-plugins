"""A default measurement with an array in and out."""

import logging
import pathlib
import sys
from collections.abc import Iterable

import click
import ni_measurement_plugin_sdk_service as nims
import numpy as np

script_or_exe = sys.executable if getattr(sys, "frozen", False) else __file__
service_directory = pathlib.Path(script_or_exe).resolve().parent
measurement_service = nims.MeasurementService(
    service_config_path=service_directory / "PhaseOffset.serviceconfig",
    ui_file_paths=[service_directory / "PhaseOffset.measui"],
)


@measurement_service.register_measurement
@measurement_service.configuration("Channel in", nims.DataType.DoubleArray1D, [0.0])
@measurement_service.configuration("Phase Offset (degrees)", nims.DataType.Float, 0.0)
@measurement_service.output("Channel out", nims.DataType.DoubleArray1D)
def measure(
    array_input: Iterable[float],
    phase_offset: float
    ) -> tuple[
        Iterable[float]
    ]:
    arr = np.array(array_input)
    phase_rad = np.deg2rad(phase_offset)
    # FFT
    fft = np.fft.fft(arr)
    N = arr.size
    # Create phase shift array for all frequencies
    # For real signals, only positive frequencies are unique
    # Apply phase shift to all frequencies
    k = np.arange(N)
    # Shift by phase_rad for all frequencies
    phase_shift = np.exp(1j * phase_rad)
    fft_shifted = fft * phase_shift
    array_output = np.real(np.fft.ifft(fft_shifted))
    return (array_output.tolist(),)


@click.command
@click.option(
    "-v",
    "--verbose",
    count=True,
    help="Enable verbose logging. Repeat to increase verbosity.",
)
def main(verbose: int) -> None:
    """Host the PhaseOffset service."""
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
