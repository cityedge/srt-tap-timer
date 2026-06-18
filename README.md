# SRT Tap Timer v1.27

SRT Tap Timer is a local browser-based tool for retiming song subtitles.

## Changes in v1.27

- The preview subtitle update interval now uses the same value as **Playback marker update interval**.
- The previous preview interval was fixed at 50 ms.
- The default remains 50 ms.
- If the marker interval is automatically changed to 100 ms for large subtitle files, the preview also uses 100 ms.
- If the user manually changes the marker interval, the preview follows that setting the next time the preview is opened.

## Preview

Click **Preview** near the SRT export controls.

The preview opens in a modal window with a black screen and centered subtitle display. It uses the currently loaded media file and starts from the editor's current audio position.

Only rows with both start and end times, and with end time later than start time, are shown in the preview. Draft rows with missing timestamps are not shown.

Closing the preview restores the editor audio position.

## Privacy

This tool runs entirely in the browser. Audio files, lyrics files, and SRT files are read locally by the browser. This tool does not upload audio, lyrics, or subtitle files to any server.

---

# SRT Tap Timer v1.27（日本語）

SRT Tap Timer は、歌詞字幕のタイミングをブラウザ上で打ち直すためのローカルWebツールです。

## v1.27の変更点

- プレビュー字幕の更新周期を、**表示中字幕マーク更新周期** と同じ値にしました。
- これまでは、プレビュー側だけ固定50msでした。
- 初期値は従来通り50msです。
- 100行以上の字幕ファイル読み込み時に更新周期が100msへ自動変更された場合、プレビュー側も100msになります。
- ユーザーが手動で更新周期を変更した場合も、次回プレビュー開始時にその値を使います。

## プレビュー

SRT保存欄の近くにある **プレビュー** ボタンを押します。

黒背景のモーダル画面が開き、中央付近に字幕が表示されます。現在読み込んでいるメディアファイルを使い、編集画面側の現在音源位置からプレビューを開始します。

開始時刻・終了時刻の両方があり、かつ終了時刻が開始時刻より後の行だけをプレビュー表示します。未設定時刻を含む途中保存行は表示しません。

プレビューを閉じると、編集画面側の音源位置はプレビュー開始前に戻ります。

## プライバシー

このツールは、すべてブラウザ内で動作します。

音源ファイル、歌詞ファイル、SRTファイルは、利用者のブラウザ内でローカルに読み込まれます。  
このツールは、音源、歌詞、字幕ファイルをサーバーへアップロードしません。

## License

This project is licensed under the MIT License.

## ライセンス

このプロジェクトは MIT License で公開しています。

