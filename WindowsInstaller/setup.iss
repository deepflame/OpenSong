[Components]
Name: OpenSong; Description: Default Install; Flags: fixed; Types: custom compact full
Name: Extras; Description: Extras; Flags: checkablealone; Types: full
Name: Extras\Backgrounds; Description: Backgrounds; Flags: checkablealone; Types: full
Name: Extras\Example_Sets; Description: Example Set; Flags: checkablealone; Types: full
Name: Extras\Songs; Description: Songs; Flags: checkablealone; Types: full
Name: Bibles; Description: Bibles; Types: full
Name: Bibles\KJV; Description: King James Version; Types: full
Name: Languages; Description: Languages
Name: Languages\Deutsch; Description: Deutsch
Name: Languages\DeutschNeutral; Description: DeutschNeutral
Name: Languages\Espanol; Description: Espanol
Name: Languages\Francais; Description: Francais
Name: Languages\Norwegian; Description: Norwegian
Name: Languages\Portugues; Description: Portugues
Name: Languages\PortuguesBrasil; Description: PortuguesBrasil
Name: Languages\Svenska; Description: Svenska
Name: Languages\Nederlands; Description: Nederlands
[Dirs]
Name: {app}\OpenSong Defaults; Components: 
Name: {app}\OpenSong Scripture
Name: {app}\OpenSong Languages; Components: 
Name: {app}\OpenSong Settings; Components: 
Name: {app}\OpenSong Defaults\Settings
Name: {app}\OpenSong Defaults\Backgrounds; Components: Extras\Backgrounds
Name: {app}\OpenSong Defaults\Sets; Components: Extras\Example_Sets
Name: {app}\OpenSong Defaults\Songs; Components: Extras\Songs
[Setup]
DefaultDirName={pf}\OpenSong
VersionInfoCompany=OpenSong
AppName=OpenSong
AppVerName=OpenSong Version 1.3.0
LicenseFile="gpl-en.txt"
SetupIconFile="OpenSongInstall.ICO"
UninstallDisplayIcon={app}\OpenSongUninstall.ICO
VersionInfoVersion=1.3.0
VersionInfoDescription=OpenSong is a free, open-source software application created to manage lyrics, chords, lead sheets, overheads, computer projection, and more.
VersionInfoCopyright=2007
AppCopyright=2007
DefaultGroupName=OpenSong
AllowNoIcons=true
[Files]
Source: "..\changelog.txt"; DestDir: "{app}"
Source: "gpl-en.txt"; DestDir: "{app}"
Source: "..\Language-Changelog.txt"; DestDir: "{app}"
Source: "..\OpenSong.exe"; DestDir: "{app}"
Source: "..\OpenSong Defaults\Settings\*"; DestDir: "{app}\OpenSong Defaults\Settings"
Source: "..\OpenSong Defaults\Backgrounds\*"; DestDir: "{app}\OpenSong Defaults\Backgrounds"; Components: "Extras\Backgrounds"
Source: "..\OpenSong Defaults\Sets\*"; DestDir: "{app}\OpenSong Defaults\Sets"; Components: "Extras\Example_Sets"
Source: "..\OpenSong Defaults\Songs\*"; DestDir: "{app}\OpenSong Defaults\Songs"; Components: "Extras\Songs"
Source: "..\OpenSong Scripture\*"; DestDir: "{app}\OpenSong Scripture"; Components: "Bibles\KJV"
Source: "..\OpenSong Settings\*"; DestDir: "{app}\OpenSong Settings"
Source: "..\OpenSong Languages\Svenska"; DestDir: "{app}\OpenSong Languages"; Components: "Languages\Svenska"
Source: "..\OpenSong Languages\Deutsch"; DestDir: "{app}\OpenSong Languages"; Components: "Languages\Deutsch"
Source: "..\OpenSong Languages\DeutschNeutral"; DestDir: "{app}\OpenSong Languages"; Components: "Languages\DeutschNeutral"
Source: "..\OpenSong Languages\English"; DestDir: "{app}\OpenSong Languages"
Source: "..\OpenSong Languages\Espanol"; DestDir: "{app}\OpenSong Languages"; Components: "Languages\Espanol"
Source: "..\OpenSong Languages\Francais"; DestDir: "{app}\OpenSong Languages"; Components: "Languages\Francais"
Source: "..\OpenSong Languages\Portugues"; DestDir: "{app}\OpenSong Languages"; Components: "Languages\Portugues"
Source: "..\OpenSong Languages\PortuguesBrasil"; DestDir: "{app}\OpenSong Languages"; Components: "Languages\PortuguesBrasil"
Source: "..\OpenSong Languages\Norwegian"; DestDir: "{app}\OpenSong Languages"; Components: "Languages\Norwegian"
Source: "OpenSongUninstall.ICO"; DestDir: "{app}"
Source: "gpl-sv.txt"; DestDir: "{app}"; Components: "Languages\Svenska"
Source: "gpl-pt.txt"; DestDir: "{app}"; Components: "Languages\Portugues"
Source: "gpl-de.txt"; DestDir: "{app}"; Components: "Languages\DeutschNeutral Languages\Deutsch"
Source: "gpl-fr.txt"; DestDir: "{app}"; Components: "Languages\Francais"
Source: "gpl-pt_BR.txt"; DestDir: "{app}"; Components: "Languages\PortuguesBrasil"
Source: "gpl-es.txt"; DestDir: "{app}"; Components: "Languages\Espanol"
Source: "gpl-nl.txt"; DestDir: "{app}"; Components: "Languages\Nederlands"
[Icons]
Name: {group}\OpenSong; Filename: {app}\OpenSong.exe; WorkingDir: {app}; IconIndex: 0; Tasks:
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\OpenSong; Filename: {app}\OpenSong.exe; IconIndex: 0; Components: ; Tasks: quicklaunchicon
Name: {commondesktop}\OpenSong; Filename: {app}\OpenSong.exe; IconIndex: 0; Tasks: desktopicon; Components: 
Name: {group}\Uninstall OpenSong; Filename: {uninstallexe}
Name: {group}\OpenSong Website; Filename: http://www.opensong.org
[Tasks]
Name: desktopicon; Description: Create a &desktop icon; GroupDescription: Additional Icons; Components: OpenSong; Flags: unchecked
Name: quicklaunchicon; Description: Create a &Quick Launch icon; GroupDescription: Additional Icons; Flags: unchecked; Components: OpenSong
[Languages]
Name: English; MessagesFile: compiler:Default.isl; LicenseFile: gpl-en.txt
Name: PortuguesBrazil; MessagesFile: compiler:Languages\BrazilianPortuguese.isl; LicenseFile: gpl-pt_BR.txt
Name: Francais; MessagesFile: compiler:Languages\French.isl; LicenseFile: gpl-fr.txt
Name: Deutsch; MessagesFile: compiler:Languages\German.isl; LicenseFile: gpl-de.txt
Name: Norsk; MessagesFile: compiler:Languages\Norwegian.isl; LicenseFile: gpl-no.txt
Name: Portugues; MessagesFile: compiler:Languages\Portuguese.isl; LicenseFile: gpl-pt.txt
Name: Espanol; MessagesFile: compiler:Languages\Spanish.isl; LicenseFile: gpl-es.txt
Name: Svenska; MessagesFile: compiler:Languages\Swedish.isl; LicenseFile: gpl-sv.txt
Name: Nederlands; MessagesFile: compiler:Languages\Dutch.isl; LicenseFile: gpl-nl.txt
[Run]
Filename: {app}\OpenSong.exe; Components: ; Flags: postinstall nowait; Description: Start OpenSong
