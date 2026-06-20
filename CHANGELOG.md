# Changelog

## v1.44

- Added a comfortable auto-scroll behavior for real-time R/E tap input.
- When R or E advances the current row near the lower part of the subtitle table, the table now jumps the current row back to a higher reading position so upcoming lyric rows remain visible.
- Kept normal row selection, SRT loading, direct editing, Undo, and save behavior unchanged.

## v1.43

- Fixed a selected-row editor display inconsistency after clearing subtitle rows or clearing all data.
- Clearing subtitle rows now resets pending selected-row edits and forces the selected-row editor into the empty disabled state.
- Clearing all data now also resets pending selected-row edits and refreshes the selected-row editor.

## v1.42

- Removed all remaining `selectedRows` references.
- Fixed the lingering `selectedRows is not defined` error during SRT loading.
- SRT loading now clears row selection using the app's actual `line.selected` model.
- Added a static check to ensure `selectedRows` does not remain in the generated HTML.
- Kept the v1.40/v1.41 behavior of populating the extraction/edit textarea with lyric text only after successful SRT parsing.

## v1.41

- Fixed the v1.40 regression where SRT loading stopped after parsing with `selectedRows is not defined`.
- Updated the file-load handler to clear the actual row-selection set used by the app.
- SRT loading should now proceed to render the right pane after successful parsing.
- Kept the v1.40 behavior where the extraction/edit textarea is filled with lyric text only after successful SRT parsing.

## v1.40

- Fixed the v1.39 regression where `parseSrtTime` was accidentally removed while replacing the SRT parser.
- Replaced only `parseSrt(raw)` and preserved the existing timestamp parser.
- SRT loading now parses timing lines with a line-scanning parser while keeping the app's existing timestamp parsing semantics.
- SRT raw text is no longer placed into the extraction/edit textarea before successful parsing.
- Tested the parser against an SRT exported from this editor.

## v1.38

- Rebuilt the selected-row editor feature from the stable v1.36 baseline after the v1.37 regression.
- Changed lyric/SRT file loading so it no longer pushes the previous state onto the undo stack.
- Successful lyric/SRT file loading now clears the undo stack and is treated as a new working baseline.
- The lyric/SRT file input is cleared before opening the file picker, so the same file can be selected again while still showing the loaded filename after selection.
- Replaced the old left-pane previous/current/next status area with a selected-row editor.
- Added direct editing for the selected row's start time, end time, and subtitle text.
- Direct selected-row edits are applied only when the Apply button is pressed.
- Direct selected-row edits are undoable.
- Empty time fields and `--:--,---` are treated as unset timestamps.
- Invalid ordering where end <= start is allowed only after confirmation.
- Added missing i18n entries for the selected-row editor labels and buttons.

## v1.36

- Added a unit note to the right-pane subtitle-row hint: shift/offset/update values are in ms.
- Removed repeated `(ms)` suffixes from right-pane timing-control labels.
- Reduced numeric input widths in the right-pane toolbar.
- Removed the separator before the “Clear editor rows” button so it can stay on the same line more easily.
- Tightened inline spacing for shift and offset controls.
- Ensured the Japanese shift label stays shortened as `選択行をシフト`.

## v1.35

- Added a waveform display offset control next to the tap input offset.
- Waveform display offset is applied only to the local waveform view:
  - `waveform display time = audio.currentTime + waveform offset`
  - It does not affect R/E timing, preview playback, or media playback position.
- Combined the waveform status text and the waveform-enable checkbox into a single header line.
- Ensured the Japanese selected-row shift label is shortened to `選択行をシフト`.

## v1.34

- Changed the local waveform current-position line to a difference-composited vertical line.
- Removed the `now` label from the waveform cursor.
- Increased waveform vertical scale by approximately 30%.
- Removed the ready-state explanatory text from the waveform header to save space.
- Moved the Preview button to the start of the right-pane toolbar.
- Moved the update interval control to the right-pane toolbar and renamed it to Preview/subtitle position update interval.
- Shortened the selected-row shift label from “Shift selected rows” to “Shift rows”.

## v1.33

- Changed waveform display from full-track overview to a local waveform view.
- The local waveform shows approximately 2 seconds before and 8 seconds after the current playback position.
- The current playback position line is fixed; the waveform scrolls as playback advances.
- Removed waveform click-to-seek. Seeking remains available through the media player and keyboard shortcuts.
- Added an advanced option to enable or disable waveform display.
- When waveform display is disabled, audio is not decoded into memory for waveform analysis.
- Disabling waveform display clears existing waveform data.
- Split the three clear buttons by scope:
  - Text clear moved to the lyric extraction row.
  - Subtitle row clear moved to the right-pane toolbar.
  - All clear remains in the global header.

## v1.32

- Fixed a regression introduced in v1.30 where loading an SRT file did not expand subtitles into the right pane.
- Restored the stable v1.29-style SRT import flow while preserving v1.30's automatic text encoding detection.
- Removed broken references to undefined helper names in the file-load handler.
- Loading an SRT file again parses subtitle blocks, fills the right pane, and applies E re-edit mode automatically when all rows have both start and end timestamps.

# Changelog

## v1.44

- Added a comfortable auto-scroll behavior for real-time R/E tap input.
- When R or E advances the current row near the lower part of the subtitle table, the table now jumps the current row back to a higher reading position so upcoming lyric rows remain visible.
- Kept normal row selection, SRT loading, direct editing, Undo, and save behavior unchanged.

## v1.31

- Moved the three clear buttons from the left pane to the global header.
- Simplified the lyric/SRT file loading row so it now contains only the file picker and text loading encoding selector.
- Reduced visual clutter in the upper-left load area.

## v1.30

- Moved Advanced mode from the left pane to the global header next to the language selector.
- Moved the tap input offset control from the left pane to the right toolbar next to the custom shift controls.
- Moved the text encoding selector next to the lyric/SRT file input and renamed it to text loading encoding.
- Changed the default text loading encoding to Auto.
- Added automatic UTF-8 / Shift-JIS detection:
  - BOM detection
  - strict UTF-8 decoding
  - Shift-JIS fallback
- Placed the three clear buttons horizontally to the right of the text encoding selector.
- Updated the user guide to describe automatic encoding detection and the new UI placement.

## v1.29

- Added beginner/advanced display mode.
- Advanced mode is a visual UI filter only; settings remain active when hidden.
- Removed the Sample button from the main UI.
- Moved the three clear buttons to the top-left settings row.
- Reduced the width used by the text encoding selector.
- Added an advanced lyric extraction option to remove ASCII parenthetical metadata lines, such as `(Fade out)` and `(scratch noise)`.
- Added simple waveform display for loaded audio/media files.
- Added a playback-position cursor on the waveform.
- Added waveform click-to-seek.
- Added tap input offset in milliseconds for `R` and `E` timing input.
- Hid several detailed controls behind advanced mode:
  - ASCII parenthetical-line removal option
  - previous-row overlap auto-trim
  - E target mode for SRT re-editing
  - Insert above
  - Clear start / Clear end
  - Custom selected-row shift
  - playback marker update interval
  - tap input offset

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
