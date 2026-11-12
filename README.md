# SRT Tap Timer v1.72

SRT Tap Timer is a local browser-based tool for creating and editing SRT subtitle timing while listening to audio. It supports lyric subtitles, AI-generated SRT correction, synchronized subtitle preview and resumable project work.

SRT Tap Timer は、音源を聴きながら `R` / `E` キーや画面ボタンで歌詞字幕の開始・終了タイミングを作成・修正できる、ローカル動作のブラウザ用SRT字幕エディターです。W補正、Shift系の境界修正・Eモード反転、作業保存・復元、音源と同期した字幕プレビューに対応しています。

詳しい操作は [USER_GUIDE.md](USER_GUIDE.md)、バージョンごとの変更履歴は [CHANGELOG.md](CHANGELOG.md) を参照してください。

## Current timing controls

- The on-screen R / E buttons perform the same normal operations as the R / E keys.
- E ends the last row started with R / W when E re-edit mode is off, or the selected row when the mode is on.
- Shift+E temporarily inverts that target without changing the mode setting.
- Shift+R sets the selected row start and previous row end to the same time, preserving the selected row end. Shift+W adds the W correction.
- T copies the current row start to the previous row end without moving the current row or playback position. No audio file or tap offset is used.
- Shift+T seeks to the current row start, using the same operation as double-clicking the row. It preserves play/pause state and does not add an Undo entry.
- Calibration measures only R taps on the high click every 2 seconds. E is not a calibration input.

チェックした行だけを対象とする **選択行を削除** / **選択行の時刻消去** ボタンと、前行の終了を現在行の開始に合わせる **Tキー** に対応しています。いずれもZの1回で元に戻せます。

**Shift+T** は、現在行の開始時刻へ再生位置を移動します。ダブルクリックと同じ動作で、再生・停止状態を維持し、Undoの対象にはなりません。T / Shift+Tの説明は左ペインのキー一覧に表示しています。

v1.65.1では、終了未設定の行の表示中マークを、後続行の開始に関係なく開始から4秒間（その間に音源が終わる場合は音源終了まで）表示するようにしました。字幕データの終了時刻は変更しません。

For rows with a start but no end time, playback markers now use a four-second window, capped at the audio end when it falls within that window. Later rows do not shorten or extend it; saved timestamps are unchanged.

v1.70では、`＊` と緑色背景の表示開始を画面の更新に同期させ、状態が変わった行だけを更新する方式に変更しました。**通常表示の更新周期(ms)**（旧「字幕位置マーク更新周期」）は、消灯・現在時刻・選択行・波形などに適用され、初期値は50msです。100行以上を読み込む際の100msへの自動調整は通常表示だけに適用され、表示開始には影響しません。シーク・停止・編集・Undoなどの直後は、その位置の表示へ即時に合わせます。

In v1.70, playback-marker onset follows the screen refresh via `requestAnimationFrame`, with DOM updates only for rows whose marker state changes. **Regular display update interval (ms)** controls expiry, time/editor displays and waveform updates; its default is 50ms. The existing automatic adjustment to 100ms for 100 or more loaded rows affects only these regular updates. Seeking, pausing, editing and Undo synchronize the display immediately. Screen refresh and browser load affect actual onset latency; this is not a guaranteed 25ms deadline. The saved interval remains compatible with older project JSON files.

## Main features

- Extract lyric lines from text with metadata tags.
- Load and re-edit existing SRT files.
- Tap subtitle timing with keyboard shortcuts.
- Save incomplete work using `--:--,---` draft timestamps.
- Save and restore SRT Tap Timer project JSON files.
- Display a local waveform preview around the current audio position.
- Directly edit the selected row's start, end, and subtitle text.
- Delete checked rows or clear only their timestamps as one undoable operation.
- Preview subtitles using the same audio player and playback position as the main screen.
- Show all overlapping completed cues in stacked blocks to expose timing conflicts.
- Preview in landscape or portrait with an optional background image, adjustable image fit, subtitle height and font size.
- Convert MP3 audio to WAV with the included ffmpeg BAT.

## Files

- `index.html` — SRT Tap Timer app.
- `USER_GUIDE.md` — full user guide and detailed operation manual.
- `CHANGELOG.md` — version history.
- `LICENSE` — MIT License.
- `convert_mp3_to_wav.bat` — drag-and-drop MP3 to WAV converter. Requires ffmpeg in PATH.

## Project save / restore

Project JSON files save subtitle rows, text, current row, major editing settings, output names and preview settings. They do not save the audio file, image file, waveform cache or Undo history. After restoring a project, re-select the audio and image files if needed. Older projects retain their supported layout settings; removed outline/band options are ignored.

## Recommended environment

Use the latest Google Chrome or Microsoft Edge on Windows.

## Subtitle preview

v1.71では動画作成機能を本体コードと配布物から削除し、**プレビュー** 専用にしました。メイン画面と同じ音源プレイヤーを使い、再生・停止・シークと字幕表示が同期します。閉じると停止し、その位置をメイン画面へ引き継ぎます。字幕は白文字・黒い縁取りあり・黒帯なしに固定しました。

Preview uses white text with a black outline and no band. Every active completed cue is drawn. Overlaps follow an approximation of FFmpeg/libass Normal collision avoidance: earlier cues keep their lower slots, later cues stack upward, and new cues can reuse space freed by ended cues. Multiline cues stay together. Positions are precomputed so seeking matches continuous playback. Font metrics, line wrapping and ASS styling are not reproduced pixel for pixel. No recording or media-stream capture code remains in the app.

The main-screen marker interval does not drive preview timing. Both displays read the same audio playback position, and the preview redraws its static canvas only when its visible cues or settings change.

v1.72では、プレビュー表示中はメイン画面の開始マーク・通常更新タイマー・波形描画を停止します。プレビューを閉じると現在位置へ即時に合わせ、設定済みの通常更新周期で再開します。音源再生とプレビュー字幕は引き続き同期して動作します。

While preview is open, main-screen marker frames, periodic updates and waveform drawing are suspended. Closing synchronizes the main display immediately and resumes its configured interval. Preview playback and subtitle timing continue independently.

## Privacy

Files are processed locally in the browser. The app itself does not upload audio, lyrics, SRT, images or project JSON files to a server.

## License

MIT License.

Copyright (c) 2026 cityedge
