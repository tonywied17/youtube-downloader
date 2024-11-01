# YouTube Video Downloader and Converter

This application provides a graphical user interface (GUI) for downloading YouTube videos at specified qualities and offers optional audio conversion to AAC for better compatibility. The app automatically detects available GPU encoders (NVIDIA or AMD) and falls back to CPU encoding if no GPU is found.

## Download the GUI Executable

You can download the latest release of the YouTube Video Downloader GUI from the following link:

[Download YouTube Downloader](https://github.com/tonywied17/youtube-downloader/releases)

## Requirements

- **FFmpeg**: Required for both GUI and CLI versions.

## Installing FFmpeg and Running the GUI Application

You can easily install FFmpeg using Scoop, a package manager for Windows.

### Step 1: Install Scoop (Optional for Package Management)

If you haven't already, install Scoop to manage packages on Windows. Open PowerShell and run:

```powershell
iwr -useb get.scoop.sh | iex
```

This installs Scoop in your user profile. You may need to allow script execution by running:

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### Step 2: Install FFmpeg

1. **Add the main bucket**:

   ```powershell
   scoop bucket add main
   ```

2. **Install FFmpeg**:

   ```powershell
   scoop install main/ffmpeg
   ```

Alternatively, if you do not want to use Scoop, you can download and install FFmpeg from the official website:

[FFmpeg Download Page](https://ffmpeg.org/download.html)

### Step 3: Run the GUI Application

You can run the application using the executable generated in the `dist` folder:

```powershell
cd dist
.\YouTube_Downloader.exe
```

### Settings Panel

The application includes a settings panel that allows you to configure the following options:
- **FFmpeg Path**: Specify the path to your FFmpeg installation.
- **Video Bitrate**: Choose the desired video bitrate from a predefined list.
- **Audio Bitrate**: Choose the desired audio bitrate from a predefined list.
- **Conversion Preset**: Select the encoding speed for FFmpeg (fast, medium, slow).
- **Output Folder**: Set the folder where downloaded videos and MP3s will be saved. The default is a `downloads/` directory relative to the script location, but you can customize it.

### MP3 Saving Feature

- The application allows you to save audio from videos as MP3 files separately.
- When you check the "Save MP3 Separately" option, the application will create an `mp3s/` folder within the downloaded channel's media folder (e.g., `output_folder/uploader_name/mp3s/`).
- The MP3 file will be named using the video title, ensuring that special characters are sanitized to prevent file system issues.

### Settings Storage

The settings are stored in a `settings.json` file within the same directory as the executable. The application will load these settings at startup, allowing you to customize the behavior of the downloader.

## Installing Python and Additional Requirements (CLI Only)

If you wish to run the CLI version, you will need to install Python and the necessary dependencies.

### Step 1: Install Python

1. **Add the main bucket**:

   ```powershell
   scoop bucket add main
   ```

2. **Install Python**:

   ```powershell
   scoop install python
   ```

### Step 2: Clone the Repository and Install Requirements

1. **Clone the Repository**:

   ```powershell
   git clone https://github.com/tonywied17/youtube-downloader.git
   ```

2. **Navigate to the Project Directory**:

   ```powershell
   cd youtube-downloader
   ```

3. **Install Python Requirements**:

   ```powershell
   pip install -r requirements.txt
   ```

### Step 3: Run the CLI Script

You can run the CLI version by specifying a YouTube URL as input:

```powershell
python cli.py "https://www.youtube.com/watch?v=VIDEO_ID"
```

The application will:
1. Display available video qualities in the GUI.
2. Prompt you to choose a quality for download.
3. Detect and use GPU encoding if available (NVIDIA or AMD), falling back to CPU if no GPU is detected.
4. Optionally, convert the audio to AAC for compatibility.

## Building a New Executable

If you need to rebuild the portable standalone version of the executable, ensure you have the necessary packages installed, and then use the following command in your terminal within the project directory:

```powershell
pyinstaller "YouTube Downloader.spec"
```

This will create a new portable standalone executable in the `dist` folder.

For a full new build, including the one-directory version and installer, refer to the **Build New Release (Portable Executable and Installer)** section below.

### Build New Release (Portable Executable and Installer)

To create a new release that includes both a portable executable (standalone) and an installer version of the YouTube Video Downloader, you can use the `build_release.ps1` script. This PowerShell script automates the entire process from the root project directory.

#### Prerequisites
- **Inno Setup**: Required for generating the installer. [Download Inno Setup](https://jrsoftware.org/isdl.php).
  - Ensure `ISCC.exe` (the Inno Setup Compiler) is accessible at the specified path or update the script with the correct path to your installation.

#### Steps to Run `build_release.ps1`

1. Open PowerShell in the root project directory.
2. Execute the `build_release.ps1` script to automate the following steps:

```powershell
.\build_release.ps1
```

#### Script Overview
The `build_release.ps1` script performs the following tasks:

1. **Clean Build**: Removes existing `dist` and `build` folders to ensure a fresh build.
2. **One-directory Build**: Generates the one-directory executable with dependencies in the `dist\YouTube Downloader` folder.
3. **Internal Compression**: Compresses the `_internal` directory within the one-directory build for optimized distribution.
4. **Generate `settings.json`**: Creates a default `settings.json` file in the one-directory build with preset configurations.
5. **One-file Executable**: Builds the standalone executable, packaging it as a single file in `dist\YouTube Downloader.exe`.
6. **Portable Zip Creation**: Compresses the one-file executable for a portable release in `dist\YouTube_Downloader_Standalone.zip`.
7. **Installer Creation**: If `ISCC.exe` is available, compiles the Inno Setup script to generate a Windows installer in the `installer_scripts` folder.


## Additional Notes

- **Special Character Handling**: The application replaces any special characters in filenames to prevent issues during processing.
- **FFmpeg Encoding**: The application checks for GPU encoders (`h264_nvenc` for NVIDIA or `h264_amf` for AMD). Ensure your GPU drivers are up to date if you wish to utilize GPU encoding.

## Troubleshooting

If you encounter issues with the application:
1. Ensure `ffmpeg` is installed and accessible from the command line.
2. For GPU encoding, verify that you have the appropriate drivers installed (NVIDIA or AMD).
3. Update `yt-dlp` if needed using `pip install --upgrade yt-dlp` (only for the CLI version).
