[Components]
Name: OpenSong; Description: Default Install; Flags: fixed; Types: custom compact full
Name: Extras; Description: Extras; Flags: checkablealone; Types: full
Name: Extras\Backgrounds; Description: Backgrounds; Flags: checkablealone; Types: full
Name: Extras\Example_Sets; Description: Example Set; Flags: checkablealone; Types: full
Name: Extras\Songs; Description: Songs; Flags: checkablealone; Types: full
Name: Bibles; Description: Bibles; Types: full
Name: Bibles\KJV; Description: King James Version; Types: full
Name: Languages; Description: Languages
Name: Languages\German; Description: Deutsch
Name: Languages\Spanish; Description: Espanol
Name: Languages\French; Description: Francais
Name: Languages\Norwegian; Description: Norwegian
Name: Languages\Portugues; Description: Portugues
Name: Languages\PortuguesBrasil; Description: Português (Brasil)
Name: Languages\Swedish; Description: Svenska
Name: Languages\Dutch; Description: Nederlands
Name: Languages\Polish; Description: Polski
Name: Languages\Czech; Description: Czech
Name: Languages\Slovenian; Description: Slovenian
Name: Languages\Hungarian; Description: Magyar
Name: Languages\Italian; Description: Italiano
Name: Languages\Russian; Description: Russian
Name: Languages\Slovak; Description: Slovak
[Dirs]
Name: {app}\OpenSong Defaults; Components: 
Name: {app}\OpenSong Scripture
Name: {app}\OpenSong Languages; Components: 
Name: {app}\OpenSong Settings; Components: 
Name: {app}\OpenSong Defaults\Settings
Name: {app}\OpenSong Defaults\Backgrounds; Components: Extras\Backgrounds
Name: {app}\OpenSong Defaults\Sets; Components: Extras\Example_Sets
Name: {app}\OpenSong Defaults\Songs; Components: Extras\Songs
Name: {app}\OpenSong Libs
[Setup]
DefaultDirName={pf}\OpenSong
VersionInfoCompany=OpenSong
AppName=OpenSong
AppVerName=OpenSong Version 1.6
LicenseFile=gpl-en.txt
SetupIconFile=OpenSongInstall.ICO
UninstallDisplayIcon={app}\OpenSongUninstall.ICO
VersionInfoVersion=1.6.1
VersionInfoDescription=OpenSong is a free, open-source software application created to manage lyrics, chords, lead sheets, overheads, computer projection, and more.
VersionInfoCopyright=2010
AppCopyright=2003
DefaultGroupName=OpenSong
AllowNoIcons=true
[Files]
Source: ..\changelog.txt; DestDir: {app}
Source: gpl-en.txt; DestDir: {app}
Source: ..\Language-Changelog.txt; DestDir: {app}
Source: ..\OpenSong.exe; DestDir: {app}
Source: ..\OpenSong Defaults\Settings\*; DestDir: {app}\OpenSong Defaults\Settings
Source: ..\OpenSong Defaults\Backgrounds\*; DestDir: {app}\OpenSong Defaults\Backgrounds; Components: Extras\Backgrounds
Source: ..\OpenSong Defaults\Sets\*; DestDir: {app}\OpenSong Defaults\Sets; Components: Extras\Example_Sets
Source: ..\OpenSong Defaults\Songs\*; DestDir: {app}\OpenSong Defaults\Songs; Components: Extras\Songs
Source: ..\OpenSong Scripture\*; DestDir: {app}\OpenSong Scripture; Components: Bibles\KJV
Source: ..\OpenSong Settings\*; DestDir: {app}\OpenSong Settings
Source: ..\OpenSong Libs\*; DestDir: {app}\OpenSong Libs
Source: ..\OpenSong Languages\Svenska; DestDir: {app}\OpenSong Languages; Components: Languages\Swedish
Source: ..\OpenSong Languages\Deutsch; DestDir: {app}\OpenSong Languages; Components: Languages\German
Source: ..\OpenSong Languages\English; DestDir: {app}\OpenSong Languages
Source: ..\OpenSong Languages\Espanol; DestDir: {app}\OpenSong Languages; Components: Languages\Spanish
Source: ..\OpenSong Languages\Francais; DestDir: {app}\OpenSong Languages; Components: Languages\French
Source: ..\OpenSong Languages\Portugues; DestDir: {app}\OpenSong Languages; Components: Languages\Portugues
Source: ..\OpenSong Languages\Portugues(Brasil); DestDir: {app}\OpenSong Languages; Components: Languages\PortuguesBrasil
Source: ..\OpenSong Languages\Norwegian; DestDir: {app}\OpenSong Languages; Components: Languages\Norwegian
Source: ..\OpenSong Languages\Polski; DestDir: {app}\OpenSong Languages; Components: Languages\Polish
Source: ..\OpenSong Languages\Czech; DestDir: {app}\OpenSong Languages; Components: Languages\Czech
Source: ..\OpenSong Languages\Slovenian; DestDir: {app}\OpenSong Languages; Components: Languages\Slovenian
Source: ..\OpenSong Languages\Nederlands; DestDir: {app}\OpenSong Languages; Components: Languages\Dutch
Source: ..\OpenSong Languages\Magyar; DestDir: {app}\OpenSong Languages; Components: Languages\Hungarian
Source: ..\OpenSong Languages\Italiano; DestDir: {app}\OpenSong Languages; Components: Languages\Italian
Source: ..\OpenSong Languages\Russian; DestDir: {app}\OpenSong Languages; Components: Languages\Russian
Source: ..\OpenSong Languages\Slovak; DestDir: {app}\OpenSong Languages; Components: Languages\Slovak
Source: OpenSongUninstall.ICO; DestDir: {app}
Source: gpl-sv.txt; DestDir: {app}; Components: Languages\Swedish
Source: gpl-pt.txt; DestDir: {app}; Components: Languages\Portugues
Source: gpl-de.txt; DestDir: {app}; Components: Languages\German
Source: gpl-fr.txt; DestDir: {app}; Components: Languages\French
Source: gpl-pt_BR.txt; DestDir: {app}; Components: Languages\PortuguesBrasil
Source: gpl-es.txt; DestDir: {app}; Components: Languages\Spanish
Source: gpl-nl.txt; DestDir: {app}; Components: Languages\Dutch
Source: gpl-pl.pdf; DestDir: {app}; Components: Languages\Polish
Source: gpl-cs.pdf; DestDir: {app}; Components: Languages\Czech
Source: gpl-hu.txt; DestDir: {app}; Components: Languages\Hungarian
Source: gpl-no.txt; DestDir: {app}; Components: Languages\Norwegian
Source: gpl-it.txt; DestDir: {app}; Components: Languages\Italian
Source: gpl-ru.txt; DestDir: {app}; Components: Languages\Russian
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
Name: Norwegian; MessagesFile: compiler:Languages\Norwegian.isl; LicenseFile: gpl-no.txt
Name: Portugues; MessagesFile: compiler:Languages\Portuguese.isl; LicenseFile: gpl-pt.txt
Name: Espanol; MessagesFile: compiler:Languages\Spanish.isl; LicenseFile: gpl-es.txt
Name: Nederlands; MessagesFile: compiler:Languages\Dutch.isl; LicenseFile: gpl-nl.txt
Name: Czech; MessagesFile: compiler:Languages\Czech.isl; LicenseFile: gpl-cs.pdf
Name: Polski; MessagesFile: compiler:Languages\Polish.isl; LicenseFile: gpl-pl.pdf
Name: Slovenian; MessagesFile: compiler:Languages\Slovenian.isl; LicenseFile: gpl-en.txt
Name: Magyar; MessagesFile: compiler:Languages\Hungarian.isl; LicenseFile: gpl-hu.txt
Name: Svenska; MessagesFile: compiler:Languages\Swedish.isl; LicenseFile: gpl-sv.txt
Name: Italiano; MessagesFile: compiler:Languages\Italian.isl; LicenseFile: gpl-it.txt
Name: Russian; MessagesFile: compiler:Languages\Russian.isl; LicenseFile: gpl-ru.txt
Name: Slovak; MessagesFile: compiler:Slovak.isl; LicenseFile: gpl-en.txt
[Run]
Filename: {app}\OpenSong.exe; Components: ; Flags: postinstall nowait; Description: Start OpenSong
