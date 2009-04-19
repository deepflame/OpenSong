  [Components]
Name: OpenSong; Description: Default Install; Flags: fixed; Types: custom compact full
Name: usersettings; Description: overschrijven gebruikersinstellingen; Flags: checkablealone; Types: full
Name: Extras; Description: Extras; Flags: checkablealone; Types: full
Name: Extras\Backgrounds; Description: Backgrounds; Flags: checkablealone; Types: full
Name: Extras\Example_Sets; Description: Example Set; Flags: checkablealone; Types: full
Name: Extras\Songs; Description: Songs; Flags: checkablealone; Types: full
Name: Extras\Songsgebruiker; Description: Songs gebruiker; Flags: checkablealone; Types: full
Name: Bibles; Description: Bibles; Types: full
Name: Bibles\KJV; Description: King James Version; Types: full
Name: Languages; Description: Languages;  Flags: checkablealone; Types: full
Name: Languages\Nederlands; Description: Nederlands;  Types: full
[Dirs]
Name: {app}\OpenSong Defaults; Components: 
Name: {app}\OpenSong Scripture
Name: {app}\OpenSong Languages; Components: 
Name: {app}\OpenSong Settings; Components:
Name: {userdocs}\OpenSong Settings; Components: usersettings
Name: {app}\OpenSong Defaults\Settings
Name: {app}\OpenSong Defaults\Backgrounds; Components: Extras\Backgrounds
Name: {app}\OpenSong Defaults\Sets; Components: Extras\Example_Sets
Name: {app}\OpenSong Defaults\Songs; Components: Extras\Songs
Name: {userdocs}\OpenSong\Songs; Components: Extras\Songsgebruiker
[Setup]
DefaultDirName={pf}\OpenSong
VersionInfoCompany=OpenSong
AppName=OpenSong gp
OutputBaseFilename=opensong_gp_setup
AppVerName=OpenSong gp Version 1.4.0
LicenseFile="..\gpl-nl.txt"
SetupIconFile="..\OpenSongInstall.ICO"
UninstallDisplayIcon={app}\OpenSongUninstall.ICO
VersionInfoVersion=1.4.0
VersionInfoDescription=OpenSong is a free, open-source software application created to manage lyrics, chords, lead sheets, overheads, computer projection, and more.
VersionInfoCopyright=2009
AppCopyright=2009
DefaultGroupName=OpenSong
AllowNoIcons=true
[code]
function NextButtonClick(CurPageID: Integer): Boolean;
begin
Result := True;
  if curpageid = wpSelectDir then
    begin
     ;; DelTree(ExpandConstant('{app}\OpenSong Scripture'), False, True, True);
     ; DelTree(ExpandConstant('{app}\OpenSong Defaults\Songs\GOTZ'), False, True, True);
     ; DelTree(ExpandConstant('{userdocs}\OpenSong Defaults\Songs\GOTZ'), False, True, True);
    end;
end;
function InitializeSetup(): Boolean;
begin
  Result := true;
   if RegKeyExists(HKEY_LOCAL_MACHINE, 'Software\opensong\noupdate') then
  begin
    msgbox('Deze laptop mag niet geupdate worden.',mbError,mb_ok);
    Result := false;
  end;

end;
[Files]
Source: "..\changelog.txt"; DestDir: "{app}"
Source: "..\changelog.txt"; DestDir: "{userdocs}\OpenSong"
Source: "..\gpl-en.txt"; DestDir: "{app}"
Source: "..\Language-Changelog.txt"; DestDir: "{app}"
Source: "..\OpenSong.exe"; DestDir: "{app}"; flags: ignoreversion
Source: "..\OpenSong Defaults\Settings\*"; DestDir: "{app}\OpenSong Defaults\Settings"
Source: "..\OpenSong Defaults\Settings\*"; DestDir: "{userdocs}\OpenSong\Settings"; Components: "usersettings"; flags: confirmoverwrite recursesubdirs
;Source: "..\OpenSong Defaults\Settings\*"; DestDir: "{userdocs}\OpenSong\Settings"; Components: "usersettings"; flags:  recursesubdirs
Source: "..\OpenSong Defaults\Backgrounds\*"; DestDir: "{app}\OpenSong Defaults\Backgrounds"; Components: "Extras\Backgrounds"
Source: "..\OpenSong Defaults\Sets\*"; DestDir: "{app}\OpenSong Defaults\Sets"; Components: "Extras\Example_Sets"
Source: "..\OpenSong Defaults\Sets\*"; DestDir: "{userdocs}\OpenSong\Sets"; Components: "Extras\Songsgebruiker"; flags: onlyifdoesntexist
Source: "..\OpenSong Defaults\Songs\*"; DestDir: "{app}\OpenSong Defaults\Songs"; Components: "Extras\Songs"; flags: recursesubdirs
Source: "..\OpenSong Defaults\Songs\*"; DestDir: "{userdocs}\opensong\Songs"; Components: "Extras\Songsgebruiker"; flags: recursesubdirs
Source: "..\OpenSong Scripture\*"; DestDir: "{app}\OpenSong Scripture"; Components: "Bibles\KJV"
Source: "..\OpenSong Defaults\Settings\*"; DestDir: "{app}\OpenSong Settings"
Source: "..\OpenSong Languages\Nederlands"; DestDir: "{app}\OpenSong Languages"; Components: "Languages"
Source: "..\OpenSong Defaults\Extra Bestanden\*"; DestDir: "{userdocs}\opensong\Extra Bestanden"; Components: "Extras\Songsgebruiker"; flags: recursesubdirs

Source: "..\OpenSongUninstall.ICO"; DestDir: "{app}"
Source: "..\gpl-nl.txt"; DestDir: "{app}"; Components: "Languages\Nederlands"
[Icons]
Name: {group}\OpenSong; Filename: {app}\OpenSong.exe; WorkingDir: {app}; IconIndex: 0; Tasks:
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\OpenSong; Filename: {app}\OpenSong.exe; IconIndex: 0; Components: ; Tasks: quicklaunchicon
Name: {commondesktop}\OpenSong; Filename: {app}\OpenSong.exe; IconIndex: 0; Tasks: desktopicon; Components: 
Name: {group}\Uninstall OpenSong; Filename: {uninstallexe}
;Name: {group}\OpenSong Vredekerk Website; Filename: http://www.pkndelier.nl/beamteam
[Tasks]
Name: desktopicon; Description: Create a &desktop icon; GroupDescription: Additional Icons; Components: OpenSong; Flags: checkablealone
Name: quicklaunchicon; Description: Create a &Quick Launch icon; GroupDescription: Additional Icons; Flags: unchecked; Components: OpenSong
[Languages]
Name: English; MessagesFile: compiler:Default.isl; LicenseFile: ..\gpl-en.txt
Name: Nederlands; MessagesFile: compiler:Languages\Dutch.isl; LicenseFile: ..\gpl-nl.txt
[Run]

Filename: {app}\OpenSong.exe; Components: ; Flags: postinstall nowait; Description: Start OpenSong
