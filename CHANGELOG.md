# Changelog

## v1.55

- Promoted the integrated video-export version back to the mainline release.
- Removed `experimental` and beta-style labels from the app UI.
- Localized the video-export material status panel so image/audio/subtitle status follows the selected language.
- Renamed the monitor interval label to match its current role: subtitle position mark update interval.
- Added Windows helper scripts to the distribution package:
  - `convert_webm_to_mp4.bat`
  - `convert_mp3_to_wav.bat`
- The helper scripts require ffmpeg in PATH and stop instead of overwriting existing output files.
- Kept the v1.51/v1.53 recording pipeline; the rejected v1.52 `captureStream(30)` change is not included.

## v1.54 experimental

- Localized remaining video-export messages.
- No intended changes to recording, SRT editing, timing, undo, or file-name logic.

## v1.53 experimental

- Rolled back to the v1.51 experimental recording pipeline; v1.52's `canvas.captureStream(30)` change is not included.
- Added a confirmation dialog before starting WebM video creation.
- The dialog warns that switching browser tabs during recording may create a WebM without subtitles.
- The user can choose OK to start recording or Cancel to stop before recording begins.
- This also helps prevent accidental re-recording when a completed WebM is already ready to save.

## v1.51 experimental

- Removed the video-preview placeholder subtitle text shown when no subtitle was active.
- Removed the unused Japanese/English i18n strings for the placeholder text.

## v1.50 experimental

- Removed the legacy preview modal DOM, CSS, state variables, functions, and event handlers.
- Kept the integrated preview / video-export window as the active preview path.

## v1.49 experimental

- Added Japanese / English language switching for the integrated video-export window.
- Added short-video and image-fit UI refinements.

## v1.45 experimental

- Added the integrated still-image + audio + subtitle WebM video export feature.

## v1.44

- Stable baseline before video export integration.
- Improved right-pane scrolling during R/E timing input.
