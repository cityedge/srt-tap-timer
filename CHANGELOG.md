# Changelog

## v1.55

- Promoted the video export integration back to a mainline version.
- Localized the video export material status panel so image/audio/subtitle status follows the selected language.
- Kept the v1.51/v1.53 recording pipeline; the rejected v1.52 captureStream(30) change is not included.


## v1.53 experimental

- Rolled back to the v1.51 experimental recording pipeline; v1.52's `canvas.captureStream(30)` change is not included.
- Added a confirmation dialog before starting WebM video creation.
- The dialog warns that switching browser tabs during recording may create a WebM without subtitles.
- The user can choose OK to start recording or Cancel to stop before recording begins.
- This also prevents accidental re-recording when a completed WebM is already ready to save.
- No intended changes to SRT editing, R/E timing, undo, SRT import/export, video-export UI, or recording output settings.

## v1.51 experimental

- Removed the video-preview placeholder subtitle text shown when no subtitle was active.
- Removed the unused Japanese/English i18n strings for the placeholder text.
- No intended specification changes from v1.50 experimental.
- Existing WebM recording workflow, image preview, SRT import/export, R/E timing, undo, direct edit, and language switching are retained.

## v1.50 experimental

- Removed the legacy preview modal DOM, CSS, state variables, functions, and event handlers.
- Kept the integrated Preview / Video Export β window as the active preview path.
- No intended specification changes from v1.49 experimental.
