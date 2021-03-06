; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{E0EB66C7-9E57-4AD4-AD37-5DA1706DAB6A}
AppName=nams
AppVersion=0.1
;AppVerName=nams 0.1
AppPublisher=Canaan Creative Co., Ltd.
AppPublisherURL=https://canaan.io
AppSupportURL=https://canaan.io
AppUpdatesURL=https://canaan.io
DefaultDirName={pf}\nams
DisableProgramGroupPage=yes
OutputDir=.\build
OutputBaseFilename=nams
Compression=lzma
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "namsc\build\win-unpacked\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "namsd\dist\*.exe"; DestDir: "{app}\server"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\nams"; Filename: "{app}\namsc.exe"
Name: "{commondesktop}\nams"; Filename: "{app}\namsc.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\server\namsd.exe"; Parameters: "--startup=auto install"
Filename: "{app}\server\namsd.exe"; Parameters: "start"
Filename: "{app}\namsc.exe"; Description: "{cm:LaunchProgram,nams}"; Flags: nowait postinstall skipifsilent

[UninstallRun]
Filename: "{app}\server\namsd.exe"; Parameters: "stop"
Filename: "{app}\server\namsd.exe"; Parameters: "remove"
