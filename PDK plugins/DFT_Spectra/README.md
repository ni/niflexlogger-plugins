# FlexLogger FFT Plug-in

This plug-in computes the Discrete Fourier Transform (DFT) of one or more channels, and displays the frequency-spectra results in a modal window.

## PDK version used to build the plug-in

24.5

## Supported versions of FlexLogger:

2024 Q4 and above

## Getting Started

- Copy the content of the build folder in C:\Users\Public\Documents\National Instruments\FlexLogger\Plugins\IOPlugins\DFT_Spectra
- Launch FlexLogger
- Configure one or more channels
- Invoke this plug-in by selecting Add channels>>Plug-in>>Frequency Spectra
- Click the configure (gear) button on the right hand side of the plug-in.
- Configure Block duration to achieve desired frequency resolution. Remember that frequency resolution equals the reciprocal of the block duration. Block duration should include at least 64 samples.
- Configure Window to reduce spectral leakage.
- Configure Overlap to maintain sample coverage. The table below shows the recommended overlap for each supported window:

Window | Overlap
--- | :-:
None | 0
Hanning | 50
Flat Top | 80
7-Term Blackman Harris | 75

- Configure averaging to balance signal-to-noise and responsiveness to changes in the signal.
- Click the channel picker icon to select the channel(s) for which you want to compute the frequency spectra and click OK.

![Configuration Options](./Configure.jpg)

## Support

Please report any problem by filing an issue in github or in the FlexLogger forum:
https://forums.ni.com/t5/FlexLogger/bd-p/1021
