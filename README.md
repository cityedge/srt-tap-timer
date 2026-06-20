# SRT Tap Timer v1.55

SRT Tap Timer is a local, single-file HTML tool for creating and editing SRT subtitles while listening to audio. It is designed primarily for Japanese song subtitles, especially Suno-style music production workflows where timing must be adjusted by ear.

The app runs in the browser. It does not require a server, and the subtitle/audio/image files are processed locally in the browser.

## Main features

- Extract lyric lines from a metatagged lyrics text file, or load an existing SRT draft.
- Tap subtitle timing while listening to audio.
- Use `R` to set the current row start time and move forward.
- Use `E` to set an end time.
- Use `Space` to play/pause audio.
- Use `Z` to undo timing and edit operations.
- Edit selected row start/end/text directly.
- Add, delete, clear, select, and bulk-shift subtitle rows.
- Display a nearby waveform around the current playback position.
- Export an SRT file.
- Preview subtitles in the integrated video-export window.
- Create a still-image + audio + subtitle WebM video in the browser.
- Create either horizontal 16:9 video or vertical 9:16 short video.
- Adjust subtitle height, font size, outline, black band, and image fitting.
- Japanese / English UI switching.

## Included files

- `index.html` — SRT Tap Timer v1.55 application.
- `README.md` — this overview.
- `USER_GUIDE.md` — detailed usage guide in Japanese.
- `CHANGELOG.md` — version history.
- `LICENSE` — MIT License.
- `convert_webm_to_mp4.bat` — Windows helper script to convert exported WebM files to MP4 with ffmpeg.
- `convert_mp3_to_wav.bat` — Windows helper script to convert MP3 files to WAV with ffmpeg.

## Target environment

The primary target is Windows + Chrome / Edge.

The integrated video export uses browser APIs such as Canvas, Web Audio, `captureStream()`, and `MediaRecorder`. Chrome / Edge on desktop is the recommended environment. Mobile browsers and Safari are not primary targets.

## Important recording note

When creating a WebM video, keep the SRT Tap Timer tab in the foreground until recording finishes. If the tab is moved to the background during recording, the browser may throttle Canvas drawing and the created WebM may have audio and image but no subtitles.

v1.55 shows a confirmation dialog before video creation to warn about this.

## Helper BAT files

The included BAT files assume that `ffmpeg` is installed and available in `PATH`.

- Drop one or more WebM files onto `convert_webm_to_mp4.bat` to create MP4 files for platforms such as TikTok and Instagram.
- Drop one or more MP3 files onto `convert_mp3_to_wav.bat` to create WAV files.

The helper scripts do not overwrite existing output files. If an output file with the same name already exists, conversion stops with an error.

## License

MIT License. See `LICENSE`.
