# SRT Tap Timer v1.55

SRT Tap Timer is a local browser-based tool for creating and editing SRT subtitle timing while listening to audio. It is designed especially for lyric subtitles, AI-generated SRT correction, and simple subtitle video creation.

SRT Tap Timer は、音源を聴きながら `R` / `E` キーで歌詞字幕の開始・終了タイミングを作成・修正できる、ローカル動作のブラウザ用SRT字幕エディターです。v1.55では、SRT編集に加えて、静止画・音源・完成字幕行から簡易字幕付きWebM動画を作成できます。

## Main features

- Extract lyric lines from text with metadata tags.
- Load and re-edit existing SRT files.
- Tap subtitle timing with keyboard shortcuts.
- Save incomplete work using `--:--,---` draft timestamps.
- Reload draft SRT files and continue editing.
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

## Recommended environment

Use the latest Google Chrome or Microsoft Edge on Windows.

The SRT editor runs locally in the browser. The video export feature depends on browser APIs such as Canvas, MediaRecorder, and audio `captureStream`, so Chrome or Edge is recommended.

## Important video export note

During WebM creation, keep the browser tab in the foreground. If you switch tabs while recording, the browser may throttle canvas rendering. The output WebM may still be created with audio, but subtitles may be missing.

## Privacy

Files are processed locally in the browser. The app itself does not upload audio, lyrics, SRT, images, or generated videos to a server.

## GitHub Pages

This repository can be published with GitHub Pages by serving `index.html` from the repository root.

## License

MIT License.

Copyright (c) 2026 cityedge
