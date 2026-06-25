# Changelog

## v1.60

- Added `Shift + Left` and `Shift + Right` for fine start-time nudging.
- `Shift + Left` moves the current row start time 0.1 seconds earlier. If this creates an overlap with the previous row, the previous row end time is also adjusted to the new start time.
- `Shift + Right` moves the current row start time 0.1 seconds later. If the previous row end time exactly matched the old start time, the previous row end time is also moved 0.1 seconds later. If there was already a gap, the previous row end time is left unchanged.
- Updated the left-pane keyboard shortcut help to include Shift+R, Shift+E, Shift+Left, and Shift+Right.
- Regular Left / Right audio seek behavior is unchanged.

## v1.59

- Improved right-pane scrolling during existing SRT re-editing.
- `ArrowDown` now uses the same comfortable downward auto-scroll behavior as real-time R/E timing input, so the current row does not get stuck at the bottom of the pane during cursor-based re-editing.
- After successfully loading an SRT file, the right-pane table scroll position is reset to the top so row 1 remains visible.
- Regular click selection and upward movement still use minimal scrolling.

## v1.58

- Added `Shift + E`.
- `Shift + E` ignores the E re-edit mode checkbox and always performs the normal OFF behavior: it ends the last row started with `R`.
- Regular `E` behavior is unchanged.
- This is intended for cases where E re-edit mode is ON, but the user temporarily wants to close the active row started by `R`.

## v1.57.1

- Fixed the first Shift+R implementation.
- Shift+R is now handled as a dedicated boundary retime operation for completed SRT re-editing.
- Shift+R sets only the current row start and the previous row end to the same timestamp.
- Shift+R no longer uses the normal R activeIndex closing logic.
- Shift+R no longer clears the current row end time when the new start would make the current row invalid. This prevents the target row's end field from unexpectedly becoming blank.

## v1.57

- Added `Shift + R` for SRT re-editing.
- `Shift + R` sets the current row start time and forcibly sets the previous row end time to the same timestamp, even when the previous row already had an end time.
- Regular `R` behavior is unchanged.
- This is intended for retiming completed SRT files where the next subtitle start should also close the previous subtitle.

## v1.56

- Added project save / restore as SRT Tap Timer project JSON.
- Project save stores subtitle rows, the editable text area, current row, active timing row, SRT output name, key editing settings, and video export settings.
- Project save does not store audio files, image files, generated WebM files, Undo history, waveform cache, Object URLs, or MediaRecorder state.
- Project restore does not clear the current work when the restore button is pressed. The current work is replaced only after a project file is selected and parsed successfully.
- After restore, a dialog shows that files themselves are not loaded and lists the saved text/SRT, audio, and image filenames.
- Recording, SRT editing, and video export pipelines are otherwise unchanged from v1.55.1.

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
