; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Win2PDF Image Only Flattener Plug-In"
#define MyAppVersion "1.0"
#define MyAppPublisher "Dane Prairie Systems, LLC"
#define MyAppURL "https://www.win2pdf.com"
#define MyAppExeName "PDFImageOnlyFlatten.exe"
#define MyWin2PDFPrinterName "Win2PDF" ;change to install plug-in for a different named Win2PDF printer

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{0BFBFFAC-916D-442F-B0B6-AF1C21D55AF5}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\Win2PDF\Plug-Ins
DisableDirPage=yes
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
; Remove the following line to run in administrative install mode (install for all users.)
PrivilegesRequired=lowest
OutputBaseFilename=Win2PDF-Image-Only-Flattener-Plug-In
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "VB.NET\bin\Release\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
;configure Win2PDF to use the plug-in
;use HKLM to install for all users
;use "SOFTWARE\Dane Prairie Systems\PrinterName" to install for a specific printer
Root: HKCU; Subkey: "SOFTWARE\Dane Prairie Systems\{#MyWin2PDFPrinterName}"; ValueType:string; ValueName: "default post action"; ValueData: "{app}\{#MyAppExeName} ""%s"""; Flags: uninsdeletevalue