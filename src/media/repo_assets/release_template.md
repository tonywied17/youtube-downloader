![YouTube Downloader Banner](https://raw.githubusercontent.com/tonywied17/youtube-downloader/refs/heads/main/src/media/repo_assets/reademe_logo_new.png)
![GitHub Downloads (all assets, specific tag)](https://img.shields.io/github/downloads/tonywied17/youtube-downloader/RELEASE/total?style=for-the-badge)

# Features

## Automatic Browser Cookie Import (New Feature)
This application will attempt to import browser cookies required for youtube downloads as well as private and paid videos. 
**Please ensure that you have...**
 - Logged into your youtube account in your browser
 - After logging into youtube, **close all browser windows and tabs**
 - Run the application and it will automatically import the cookies required from your browser to a `cookies.txt` file in your download output folder.

**If you are getting an error message about cookies, please delete any cookies.txt in your output folder and re-follow the steps above.**

**Manually Import:**
 If cookies are not auto-imported, you can manually import them by exporting with a browser extension such as [Get cookies.txt LOCALLY](https://chromewebstore.google.com/detail/get-cookiestxt-locally/cclelndahbckbenkjhflpdbgdldlbecc) and navigate to youtube.com and login, then export/save the cookies to a `cookies.txt` file in the output folder using the extension.

## Interactive CLI Features
- **Download a New Video**: Download a specific video from YouTube.
- **Download Audio as MP3**: Extract and download only the audio of a video as an MP3 file.
- **Download an Entire Playlist (Videos)**: Download all videos in a YouTube playlist.
- **Download an Entire Playlist (Audio/MP3)**: Download all videos from a playlist as MP3 files.
- **Selectively Download from a Playlist**: Choose specific videos/mp3s from a playlist to download.
- **Search YouTube Videos**: Search for videos on YouTube and download the desired video.

## GUI Features
- **Download YouTube videos**: Select and download videos at the best available quality.
- **Automatic AAC Conversion**: Download videos with the best audio quality and original video quality merged into a highly compatible MP4 format.
- **MP3 File Saving Option**: Save a separate MP3 copy of the video’s audio in a clean and accessible folder.
- **Settings Panel**: Easily customize audio bitrate, output folder, and other settings.
- **Standalone Executable**: Runs as a standalone application without needing external dependencies like FFmpeg (which is bundled).

# Standalone Download Options

- **Standalone GUI `.zip` (Windows):** A single-file version of the GUI that includes everything needed to run the application without installation. Ideal for portability, this version allows you to launch the application directly, making it easy to move and store across different directories or devices.

- **Standalone CLI `.zip` (Windows):** A single-file version of the CLI that allows you to run the interactive command-line interface without installation. This option is great for users who prefer working directly from the command line and need a portable solution.

- **BUNDLE  Archives `.zip` `.tar.gz` (Windows, Linux):**  Contains both the CLI and GUI standalone executables for Windows, or Linux.
