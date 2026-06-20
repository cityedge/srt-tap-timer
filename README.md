# SRT Tap Timer

SRT Tap Timer is a browser-based SRT subtitle timing editor for lyric subtitles.

音源を再生しながら、キーボード操作で歌詞字幕の開始・終了タイミングを作成・修正するためのHTML単体アプリです。音源・歌詞・SRTファイルはブラウザ内でローカルに処理され、サーバーへアップロードされません。

## Use the app

Open `index.html` on GitHub Pages, or download the standalone package from Releases and open the HTML file locally.

## Documentation

- [Full User Guide / フル操作マニュアル](USER_GUIDE.md)
- [Changelog / 更新履歴](CHANGELOG.md)
- [License](LICENSE)

## Current version

v1.44

## Main features

- Create SRT timing from plain lyric text.
- Re-time existing SRT files.
- Tap subtitle start timing with `R`.
- Set end timing with `E`.
- Keep upcoming lyric rows visible with comfortable auto-scroll during real-time R/E tap input.
- Support both beginner mode and advanced mode.
- Show a local waveform around the current playback position.
- Apply a tap input offset to `R` / `E` timing.
- Auto-detect UTF-8 / Shift-JIS text encoding when loading lyric or SRT files.
- Adjust waveform display timing independently from tap input timing.
- Edit the selected row directly from the left-pane inspector.
- Optionally remove ASCII parenthetical metadata lines such as `(Fade out)` during lyric extraction.
- Save incomplete draft SRT files using `--:--,---`.
- Reload draft SRT files and continue editing.
- Preview completed subtitles in a modal preview screen.

## Privacy

This tool runs entirely in the browser. Audio, lyrics, and SRT files are read locally by the browser. The app does not upload these files to any server.

## License

This project is licensed under the MIT License.

Copyright (c) 2026 cityedge
