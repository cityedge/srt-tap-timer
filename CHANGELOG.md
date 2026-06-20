# Changelog

## v1.55

Mainstream release based on the v1.54 line.

- Removed experimental / beta wording from the application.
- Renamed the right-pane interval option from preview-related wording to "Subtitle position mark update interval" / 「字幕位置マーク更新周期」.
- Kept the v1.51/v1.53 recording pipeline. The v1.52 `canvas.captureStream(30)` recording change is not included.
- Kept the recording-start confirmation dialog that warns users not to switch browser tabs during WebM creation.
- Localized the video export material status display.
- Included `convert_webm_to_mp4.bat` for converting generated WebM files to MP4.
- Included `convert_mp3_to_wav.bat` for converting MP3 audio to WAV.
- Rebuilt `USER_GUIDE.md` as the full v1.55 operation manual based on the full v1.44 guide structure.
- Updated `README.md` and this changelog for v1.55 distribution.

## v1.54

- Added remaining localization for video export messages.
- Localized missing material and recording progress messages.
- No intended changes to SRT editing or video recording behavior.

## v1.53

- Rolled back to the v1.51 recording pipeline.
- Added a confirmation dialog before starting WebM video creation.
- The dialog warns that switching browser tabs during recording may create a WebM without subtitles.
- The user can choose OK to start recording or Cancel to stop before recording begins.
- This also prevents accidental re-recording when a completed WebM is already ready to save.

## v1.52

- Experimental recording change using regular `canvas.captureStream(30)`.
- Later determined unnecessary for the confirmed cause of missing subtitles during background-tab recording.
- Not used as the base for v1.55.

## v1.51

- Removed the placeholder subtitle text shown when no subtitle is active in the video preview.
- Subtitle-free sections now display only the background image.

## v1.50

- Removed the old standalone preview implementation.
- The right-pane preview entry now opens the integrated preview / video export screen.

## v1.49

- Improved video export UI localization.
- Reworked the video type option into a short-video checkbox.
- Reworked image fit as a slider with `x1.00` style scale display.

## v1.48

- Pauses the main audio when opening preview / video export.
- Added independent scrolling inside the video export modal.
- Reworked video export controls.

## v1.47

- Replaced the old preview entry with the integrated preview / video export entry.
- Added image clear control.

## v1.44

- Stable pre-video-export baseline.
- Improved right-pane auto-scroll behavior during real-time R/E timing.
