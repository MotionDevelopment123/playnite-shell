; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Playnite-Shell"
#define MyAppVersion "1.0.0.0"
#define MyAppPublisher "Motion Development"
#define MyAppURL "https://github.com/MotionDevelopment123/playnite-shell"
#define MyAppExeName "Playnite-Shell - Github.url"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{1F5BCF75-3481-4176-A1BC-06EC3A0DBEA7}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName=C:\{#MyAppName}
DisableDirPage=yes
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=C:\Shared Folder\GitHub\playnite-shell\Installer\SETUPDOCS\License.txt
; Remove the following line to run in administrative install mode (install for all users.)
PrivilegesRequired=lowest
OutputDir=C:\Shared Folder\GitHub\playnite-shell\Installer\OUTPUT
OutputBaseFilename=mysetup
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "C:\Shared Folder\GitHub\playnite-shell\Installer\Shortcuts\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Shared Folder\GitHub\playnite-shell\General\EXE\Windows-Shell.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Shared Folder\GitHub\playnite-shell\Splash\EXE\Splash-Shell.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Shared Folder\GitHub\playnite-shell\Splash\Scripts\FFPLAY.LOCATION"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Shared Folder\GitHub\playnite-shell\Splash\Scripts\PLAYNITE.LOCATION"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Shared Folder\GitHub\playnite-shell\Splash\Scripts\SCREENSIZE.PIXELS"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Shared Folder\GitHub\playnite-shell\Splash\Scripts\VIDEO.LOCATION"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Shared Folder\GitHub\playnite-shell\Installer\Shortcuts\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstall.exe}"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: shellexec postinstall skipifsilent
