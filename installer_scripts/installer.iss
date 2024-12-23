[Setup]
AppName=YouTube Downloader
AppVersion=0.2
DefaultDirName={userappdata}\YouTube Downloader
DefaultGroupName=YouTube Downloader
OutputDir=.
OutputBaseFilename=YouTube_Downloader-Setup
Compression=lzma
SolidCompression=yes
PrivilegesRequired=lowest
SetupIconFile=..\src\icons\yt-multi-size.ico
UninstallDisplayIcon=..\src\media\bmps\wizard-icon.bmp
WizardImageFile=..\src\media\bmps\wizard-left.bmp
WizardSmallImageFile=..\src\media\bmps\wizard-icon.bmp


[Tasks]
Name: "desktopicon"; Description: "Create a Desktop shortcut"; GroupDescription: "Additional icons:"
Name: "startmenuicon"; Description: "Create a Start Menu shortcut"; GroupDescription: "Additional icons:"

[Dirs]
Name: "{app}\downloads"

[Files]
Source: "..\dist\YouTube Downloader\YouTube Downloader.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\dist\YouTube Downloader\settings.json"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\dist\YouTube Downloader\_internal.zip"; DestDir: "{tmp}"; Flags: deleteafterinstall
Source: "..\dist\YouTube Downloader CLI.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "7z.exe"; DestDir: "{tmp}"; Flags: deleteafterinstall

[Icons]
Name: "{group}\YouTube Downloader"; Filename: "{app}\YouTube Downloader.exe"; Tasks: startmenuicon
Name: "{group}\YouTube Downloader CLI"; Filename: "{app}\YouTube Downloader CLI.exe"; Tasks: startmenuicon
Name: "{userdesktop}\YouTube Downloader"; Filename: "{app}\YouTube Downloader.exe"; Tasks: desktopicon

[Run]
Filename: "{tmp}\7z.exe"; Parameters: "x ""{tmp}\_internal.zip"" -o""{app}"" -y"; WorkingDir: "{app}"; Flags: runhidden waituntilterminated skipifsilent
Filename: "{app}\YouTube Downloader.exe"; Description: "Launch YouTube Downloader"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: filesandordirs; Name: "{app}\_internal"
Type: files; Name: "{app}\settings.json"
Type: dirifempty; Name: "{app}\downloads"
Type: dirifempty; Name: "{app}"
