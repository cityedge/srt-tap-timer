# SRT Tap Timer v1.60

SRT Tap Timer is a local browser-based tool for creating and editing SRT subtitle timing while listening to audio. It is designed especially for lyric subtitles, AI-generated SRT correction, simple subtitle video creation, and resumable project work.

SRT Tap Timer は、音源を聴きながら `R` / `E` キーで歌詞字幕の開始・終了タイミングを作成・修正できる、ローカル動作のブラウザ用SRT字幕エディターです。v1.57では、v1.56の作業保存・復元機能に加えて、Shift+Rで1つ前の字幕の終了時刻を現在行の開始時刻へ強制的に合わせる再編集ショートカットに対応しました。

## Main features

- Extract lyric lines from text with metadata tags.
- Load and re-edit existing SRT files.
- Tap subtitle timing with keyboard shortcuts.
- Save incomplete work using `--:--,---` draft timestamps.
- Save and restore SRT Tap Timer project JSON files.
- Display a local waveform preview around the current audio position.
- Directly edit the selected row's start, end, and subtitle text.
- Preview and create a simple subtitle WebM video.
- Export landscape video (16:9 / 1280×720) or short vertical video (9:16 / 720×1280).
- Convert generated WebM files to MP4 with the included ffmpeg BAT.
- Convert MP3 audio to WAV with the included ffmpeg BAT.

## Files

- `index.html` — SRT Tap Timer app.
- `USER_GUIDE.md` — full user guide and detailed operation manual.
- `CHANGELOG.md` — version history.
- `LICENSE` — MIT License.
- `convert_webm_to_mp4.bat` — drag-and-drop WebM to MP4 converter. Requires ffmpeg in PATH.
- `convert_mp3_to_wav.bat` — drag-and-drop MP3 to WAV converter. Requires ffmpeg in PATH.

## Project save / restore

Project JSON files save subtitle rows, text, current row, major editing settings, output names, and video export settings. They do not save the audio file, image file, generated WebM, waveform cache, or Undo history. After restoring a project, re-select the audio and image files if needed.

## Recommended environment

Use the latest Google Chrome or Microsoft Edge on Windows.

## Important video export note

During WebM creation, keep the browser tab in the foreground. If you switch tabs while recording, the browser may throttle canvas rendering. The output WebM may still be created with audio, but subtitles may be missing.

## Privacy

Files are processed locally in the browser. The app itself does not upload audio, lyrics, SRT, images, project JSON files, or generated videos to a server.

## License

MIT License.

Copyright (c) 2026 cityedge
