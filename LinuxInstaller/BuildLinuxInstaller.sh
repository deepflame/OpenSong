#!/bin/bash

############
# Howto use the Linux Install Builder
#
# 1. Update the versioning information in the OpenSong App section.
#
# 2. Do a build of OpenSong using RealBasic,
#    make sure a valid opensong binary is in the project root.
#
# 3. Run this script, it will generate a .deb package.
############


VERSION=`cat ../OpenSong.rbvcp | grep ShortVersion | cut -d = -f 2`

if [ ! -e "../opensong" ]
then
  echo "The binary opensong does not exist! Do a build before creating the installer."
  exit 1
fi

echo "Creating a Debian package for OpenSong v$VERSION"

if [ -d "opensong" ]
then
  rm -rf opensong
fi

mkdir -p opensong/DEBIAN
mkdir -p opensong/opt/OpenSong/OpenSong\ Defaults/Backgrounds
mkdir -p opensong/opt/OpenSong/OpenSong\ Defaults/Sets
mkdir -p opensong/opt/OpenSong/OpenSong\ Defaults/Settings
mkdir -p opensong/opt/OpenSong/OpenSong\ Defaults/Songs
mkdir -p opensong/opt/OpenSong/OpenSong\ Languages
mkdir -p opensong/opt/OpenSong/OpenSong\ Scripture
mkdir -p opensong/opt/OpenSong/OpenSong\ Settings
mkdir -p opensong/usr/share/applications/

cp ../opensong opensong/opt/OpenSong/
cp ../changelog.txt opensong/opt/OpenSong/
cp ../Language-Changelog.txt opensong/opt/OpenSong/
cp ../Images/ProgramIconPic48-8.xpm opensong/opt/OpenSong/opensong.xpm
cp ../OpenSong\ Defaults/Backgrounds/* opensong/opt/OpenSong/OpenSong\ Defaults/Backgrounds/
cp ../OpenSong\ Defaults/Sets/* opensong/opt/OpenSong/OpenSong\ Defaults/Sets/
cp ../OpenSong\ Defaults/Settings/* opensong/opt/OpenSong/OpenSong\ Defaults/Settings/
cp ../OpenSong\ Defaults/Songs/* opensong/opt/OpenSong/OpenSong\ Defaults/Songs/
cp ../OpenSong\ Languages/* opensong/opt/OpenSong/OpenSong\ Languages/
cp ../OpenSong\ Scripture/KJV opensong/opt/OpenSong/OpenSong\ Scripture/
cp ../OpenSong\ Settings/bnames.xml opensong/opt/OpenSong/OpenSong\ Settings/
cp ../OpenSong\ Settings/Globals opensong/opt/OpenSong/OpenSong\ Settings/
cp ../OpenSong\ Settings/keyconfig.dtd opensong/opt/OpenSong/OpenSong\ Settings/
cp ../OpenSong\ Settings/style.css opensong/opt/OpenSong/OpenSong\ Settings/


echo "Package: opensong
Version: $VERSION
Section: misc
Priority: extra
Architecture: i386
Essential: no
Maintainer: Vwout <vwout@users.sourceforge.net>
Depends: libc6 (>=2.3), libexpat1 (>=1.95.8), libglib2.0-0 (>=2.2.0), libgtk2.0-0 (>=2.2.0)
Description: managing and presenting worship lyrics, chords and more
 OpenSong is a free software application for managing chords and lyrics 
 sheets (lead sheets), presenting lyrics (and custom slides) using a 
 projector, and much more! Great for worship leaders and musicians!" > opensong/DEBIAN/control

echo "#!/bin/sh
update-desktop-database
exit 0
" > opensong/DEBIAN/postinst
chmod 755 opensong/DEBIAN/postinst

echo "#!/bin/sh
exit 0
" > opensong/DEBIAN/prerm
chmod 755 opensong/DEBIAN/prerm

echo "[Desktop Entry]
Encoding=UTF-8
Name=OpenSong $VERSION
Name[en_GB]=OpenSong $VERSION
Comment=Manage and present worship lyrics, chords and more!
Comment[en_GB]=Manage and present worship lyrics, chords and more!
Exec=/opt/OpenSong/opensong
Icon=/opt/OpenSong/opensong.xpm
Terminal=false
Type=Application
Categories=Multimedia;Office" > opensong/usr/share/applications/opensong.desktop

IFS=$'\n'
md5sum `find opensong/opt -type f | sed "s/ /\\\ /g"` > opensong/DEBIAN/md5sums
md5sum `find opensong/usr -type f | sed "s/ /\\\ /g"` >> opensong/DEBIAN/md5sums

if [ -e "opensong_$VERSION-1_i386.deb" ]
then
  rm opensong_$VERSION-1_i386.deb
fi
dpkg-deb -b opensong opensong_$VERSION-1_i386.deb