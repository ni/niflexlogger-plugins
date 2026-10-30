# Changelog

All notable changes to this project will be documented in this file.

## [1.1.0] - 2026-10-23

### Changed

- Call "Write Check for Cyclic Dependencies.vi" in "Initialize.vi" to disable cyclic dependency checking for the plug-in
- Change Apply Settings to use the current value of "Show confirmation dialogs" instead of the applied value to decide whether to prompt for confirmation
- Fix some UI visual glitches
- Uppdated PDK version and minimum FlexLogger version to 2026 Q4 (26.8)
- Updated dependencies and LabVIEW version to 2026 (re-saved VIs in current version)
- Updated the readme with new version information

### Added
- Added this changelog

### Removed

- Removed workaround in "Initialize Settings.vi" for re-creating channels in versions of FlexLogger prior to 2026 Q1.
- Removed "Output Sequencer - FlexLogger 2024-2025.lvproj" 

## [1.0.0] - 2026-01-14

### Added

- Initial public release of plug-in

