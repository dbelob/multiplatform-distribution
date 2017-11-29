;This file will be executed next to the application bundle image
;I.e. current directory will contain folder with application files
[Setup]
AppId=${innosetup.appId}
AppName=${innosetup.appName}
AppVersion=${innosetup.appVersion}
AppVerName=${innosetup.appVerName}
AppPublisher=${innosetup.appPublisher}
AppComments=
AppCopyright=${innosetup.appCopyright}
AppPublisherURL=${innosetup.appPublisherURL}
;AppSupportURL=http://java.com/
;AppUpdatesURL=http://java.com/
DefaultDirName=${innosetup.defaultDirName}
DisableStartupPrompt=Yes
DisableDirPage=No
DisableProgramGroupPage=No
DisableReadyPage=No
DisableFinishedPage=No
DisableWelcomePage=No
DefaultGroupName=${innosetup.defaultGroupName}
;Optional License
LicenseFile=${innosetup.applicationDirectory}\app\license.txt
;WinXP or above
MinVersion=0,5.1 
OutputBaseFilename=${innosetup.outputBaseFilename}
Compression=lzma
SolidCompression=yes
PrivilegesRequired=poweruser
SetupIconFile=${innosetup.applicationDirectory}\${innosetup.applicationIco}
UninstallDisplayIcon={app}\${innosetup.applicationExe}
UninstallDisplayName=${innosetup.uninstallDisplayName}
WizardImageBackColor=clWhite
WizardImageFile=${innosetup.wizardImageFile}
WizardImageStretch=No
WizardSmallImageFile=${innosetup.wizardSmallImageFile}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: desktopicon; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"

[Files]
Source: "${innosetup.applicationDirectory}\${innosetup.applicationExe}"; DestDir: "{app}"; Flags: ignoreversion
Source: "${innosetup.applicationDirectory}\*.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "${innosetup.applicationDirectory}\app\license.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "${innosetup.applicationDirectory}\app\readme.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "${innosetup.applicationDirectory}\app\*"; DestDir: "{app}\app"; Excludes: "license.txt,readme.txt"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "${innosetup.applicationDirectory}\runtime\*"; DestDir: "{app}\runtime"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\${innosetup.appName}"; Filename: "{app}\${innosetup.applicationExe}"; IconFilename: "{app}\${innosetup.applicationExe}"; Check: returnTrue()
Name: "{commondesktop}\${innosetup.appName}"; Filename: "{app}\${innosetup.applicationExe}";  IconFilename: "{app}\${innosetup.applicationExe}"; Tasks: desktopicon

[Run]
Filename: "{app}\${innosetup.applicationExe}"; Description: "{cm:LaunchProgram,${innosetup.appName}}"; Flags: nowait postinstall skipifsilent

[Code]
function returnTrue(): Boolean;
begin
  Result := True;
end;

function returnFalse(): Boolean;
begin
  Result := False;
end;

function InitializeSetup(): Boolean;
begin
// Possible future improvements:
//   if version less or same => just launch app
//   if upgrade => check if same app is running and wait for it to exit
//   Add pack200/unpack200 support? 
  Result := True;
end;  
