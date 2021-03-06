#define BuildMode "opt"
#define AppName "npsnet"
#define AppVerName "npsnet 1.0"
#define Publisher "DMZ Group"
#define AppURL "http://dmzdev.org"
#define AppExeName "npsnet.exe"
#define DependDir "..\..\..\depend"
#define VsDir "c:\Program Files\Microsoft Visual Studio 8"

[Setup]
AppId={{024B1535-FECA-41B1-9E7A-59B8FA97C8FD}
AppName={#AppName}
AppVerName={#AppVerName}
AppPublisher={#Publisher}
AppPublisherURL={#AppURL}
AppSupportURL={#AppURL}
AppUpdatesURL={#AppURL}
ShowLanguageDialog=no
DefaultDirName={pf}\{#AppName}
DefaultGroupName={#AppName}
UninstallDisplayName={#AppName}
UninstallDisplayIcon={app}\bin\{#AppExeName}
UninstallFilesDir={app}\uninst
OutputDir=.
OutputBaseFilename=npsnetsetup
;OutputManifestFile=manifest.txt
;WizardImageFile=WizImage.bmp
;WizardSmallImageFile=WizSmallImage.bmp
SetupIconFile=Setup.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: english; MessagesFile: compiler:Default.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Languages:
Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked

[Icons]
Name: {group}\{#AppName}; Filename: {app}\bin\{#AppExeName}; WorkingDir: {app}; IconFilename: {app}\bin\{#AppExeName}; Tasks:
Name: {group}\{cm:UninstallProgram,{#AppName}}; Filename: {uninstallexe}
Name: {userdesktop}\{#AppName}; Filename: {app}\bin\{#AppExeName}; Tasks: desktopicon; WorkingDir: {app}; IconFilename: {app}\bin\{#AppExeName}; Languages:
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\{#AppName}; Filename: {app}\bin\{#AppExeName}; Tasks: quicklaunchicon; WorkingDir: {app}; IconFilename: {app}\bin\{#AppExeName}; Languages:

[Run]
Filename: {app}\bin\{#AppExeName}; Description: {cm:LaunchProgram,{#AppName}}; Flags: nowait postinstall skipifsilent; Tasks: ; Languages:

[Registry]
Root: HKLM; Subkey: Software\DMZ\{#AppName}; ValueType: string; ValueName: workingDir; ValueData: {app}; Flags: uninsdeletekey
Root: HKCR; Subkey: npsnet.file\shell\open\command; ValueType: string; ValueData: "{app}\bin\npsnet.exe ""%1"""; Flags: uninsdeletekey

[Files]
Source: ..\..\..\bin\win32-{#BuildMode}\npsnet.app\*; DestDir: {app}; Flags: recursesubdirs
Source: {#DependDir}\bin\QtCore4.dll; DestDir: {app}\bin
Source: {#DependDir}\bin\QtGui4.dll; DestDir: {app}\bin
Source: {#DependDir}\bin\QtOpenGL4.dll; DestDir: {app}\bin
Source: {#DependDir}\bin\QtSvg4.dll; DestDir: {app}\bin
Source: {#DependDir}\bin\QtXml4.dll; DestDir: {app}\bin
Source: {#DependDir}\bin\osg55-osg.dll; DestDir: {app}\bin
Source: {#DependDir}\bin\osg55-osgDB.dll; DestDir: {app}\bin
Source: {#DependDir}\bin\osg55-osgFX.dll; DestDir: {app}\bin
Source: {#DependDir}\bin\osg55-osgGA.dll; DestDir: {app}\bin
Source: {#DependDir}\bin\osg55-osgSim.dll; DestDir: {app}\bin
Source: {#DependDir}\bin\osg55-osgText.dll; DestDir: {app}\bin
Source: {#DependDir}\bin\osg55-osgTerrain.dll; DestDir: {app}\bin
Source: {#DependDir}\bin\osg55-osgUtil.dll; DestDir: {app}\bin
Source: {#DependDir}\bin\osg55-osgViewer.dll; DestDir: {app}\bin
Source: {#DependDir}\bin\ot11-OpenThreads.dll; DestDir: {app}\bin
Source: {#DependDir}\bin\libpng13.dll; DestDir: {app}\bin
Source: {#DependDir}\bin\zlib1.dll; DestDir: {app}\bin
Source: {#DependDir}\bin\osgplugins-2.8.0\osgdb_png.dll; DestDir: {app}\bin
Source: {#DependDir}\bin\osgplugins-2.8.0\osgdb_ive.dll; DestDir: {app}\bin
Source: {#DependDir}\bin\osgplugins-2.8.0\osgdb_osgfx.dll; DestDir: {app}\bin
Source: {#DependDir}\bin\osgplugins-2.8.0\osgdb_freetype.dll; DestDir: {app}\bin
Source: {#DependDir}\bin\fmodex.dll; DestDir: {app}\bin
Source: {#DependDir}\bin\fmodexL.dll; DestDir: {app}\bin
Source: {#DependDir}\bin\fmodexp.dll; DestDir: {app}\bin
Source: {#VsDir}\VC\redist\x86\Microsoft.VC80.CRT\*; DestDir: {app}\bin\Microsoft.VC80.CRT
