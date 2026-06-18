# Changelog

## v1.28

- Added a save-time helper for the common case where only the final subtitle end time is missing.
- When the last subtitle has a start time but no end time, and all previous rows are complete and valid, the app proposes an automatic end time.
- The proposed end time is the earlier of:
  - 10 seconds after the last subtitle start time
  - the media end time
- If media duration is unavailable, the app proposes 10 seconds after the last subtitle start time.
- The user can choose:
  - `1`: set the proposed end time and save
  - `2`: save as a draft with the final end time still missing
  - cancel or blank: cancel export
- Documentation structure changed:
  - `README.md`: short repository landing page
  - `USER_GUIDE.md`: full operation manual and specification
  - `CHANGELOG.md`: version history

## v1.27

- Preview subtitle update interval now uses the same value as the playback marker update interval.
- Default remains 50 ms.
- If the marker interval is automatically raised to 100 ms for large subtitle files, preview also uses 100 ms.

## v1.26

- Improved the preview modal layout.
- Preview screen now scales better within the viewport.
- Subtitle preview text is centered and smaller than earlier versions.
- Long subtitles wrap more safely.

## v1.25

- Added subtitle preview modal.
- Preview uses a separate media element so the editor audio position can be restored after closing.
- Preview shows only rows with complete and valid timestamps.

## v1.24

- Existing complete SRT files automatically enable SRT re-editing mode.
- Draft SRT files containing `--:--,---` keep new-timing mode.

## v1.23

- Incomplete rows are included when exporting.
- Missing timestamps are saved as `--:--,---`.
- Draft SRT files can be reloaded by the tool.

## v1.22

- Added timestamp clear buttons.
- Added Backspace shortcut for clearing both start and end times.

## v1.21

- Fixed repeated `R` on the same row so it does not create zero-length subtitles.

## v1.20

- Simplified custom shift controls.
- Added Insert, Shift+Insert, Delete shortcuts for row operations.

## v1.19 and earlier

- Added row insertion/deletion, undo, playback marker, SRT import, line-break marker handling, and GitHub Pages packaging.
