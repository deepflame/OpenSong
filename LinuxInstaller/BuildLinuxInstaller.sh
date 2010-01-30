#!/bin/sh

############
# Howto use the Linux Install Builder
#
# 1. Update the versioning information in the OpenSong App section.
#
# 2. Do a build of OpenSong using RealBasic,
#    make sure a valid opensong binary is in the project root.
#    or in the Builds directory created by REALBasic
#
# 3. Run this script, it will generate a .deb package.
############
# History
# Date        Who         What
# ----------  ----------  --------
# 2010-01-30  Vwout       Update to support the new Builds directory structure
#                         and new external libraries
#

VERSION=`cat ../OpenSong.rbvcp | grep ShortVersion | cut -d = -f 2`
BASE_DIR=".."
BUILD_DIR="${BASE_DIR}/Builds - OpenSong.rbvcp/Linux/opensong"

if [ ! -e "${BUILD_DIR}/opensong" ]
then
  BUILD_DIR=$BASE_DIR
  if [ ! -e "${BUILD_DIR}/opensong" ]
  then
    echo "The binary opensong does not exist! Do a build before creating the installer."
    exit 1
  fi
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
mkdir -p opensong/opt/OpenSong/opensong\ Libs
mkdir -p opensong/usr/share/applications/

cp "${BUILD_DIR}"/opensong opensong/opt/OpenSong/
cp "${BUILD_DIR}"/opensong\ Libs/* opensong/opt/OpenSong/opensong\ Libs/
cp "${BASE_DIR}"/changelog.txt opensong/opt/OpenSong/
cp "${BASE_DIR}"/Language-Changelog.txt opensong/opt/OpenSong/
cp "${BASE_DIR}"/Images/ProgramIconPic48-8.xpm opensong/opt/OpenSong/opensong.xpm
cp "${BASE_DIR}"/OpenSong\ Defaults/Backgrounds/* opensong/opt/OpenSong/OpenSong\ Defaults/Backgrounds/
cp "${BASE_DIR}"/OpenSong\ Defaults/Sets/* opensong/opt/OpenSong/OpenSong\ Defaults/Sets/
cp "${BASE_DIR}"/OpenSong\ Defaults/Settings/* opensong/opt/OpenSong/OpenSong\ Defaults/Settings/
cp "${BASE_DIR}"/OpenSong\ Defaults/Songs/* opensong/opt/OpenSong/OpenSong\ Defaults/Songs/
cp "${BASE_DIR}"/OpenSong\ Languages/* opensong/opt/OpenSong/OpenSong\ Languages/
cp "${BASE_DIR}"/OpenSong\ Scripture/KJV opensong/opt/OpenSong/OpenSong\ Scripture/
cp "${BASE_DIR}"/OpenSong\ Settings/bnames.xml opensong/opt/OpenSong/OpenSong\ Settings/
cp "${BASE_DIR}"/OpenSong\ Settings/Globals opensong/opt/OpenSong/OpenSong\ Settings/
cp "${BASE_DIR}"/OpenSong\ Settings/keyconfig.dtd opensong/opt/OpenSong/OpenSong\ Settings/
cp "${BASE_DIR}"/OpenSong\ Settings/style.css opensong/opt/OpenSong/OpenSong\ Settings/

chmod +x opensong/opt/OpenSong/opensong

# Create the installer files
INSTALL_SIZE=`du -sk opensong | cut -f 1`

echo "Package: opensong
Version: $VERSION
Section: misc
Priority: extra
Architecture: i386
Essential: no
Maintainer: Vwout <vwout@users.sourceforge.net>
Depends: libc6 (>=2.3), libexpat1 (>=1.95.8), libglib2.0-0 (>=2.2.0), libgtk2.0-0 (>=2.2.0)
Installed-Size: $INSTALL_SIZE
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

find opensong/opt -type f -print0 | xargs -0 md5sum > opensong/DEBIAN/md5sums
find opensong/usr -type f -print0 | xargs -0 md5sum >> opensong/DEBIAN/md5sums

if [ -e "opensong_$VERSION-1_i386.deb" ]
then
  rm opensong_$VERSION-1_i386.deb
fi
dpkg-deb -b opensong opensong_$VERSION-1_i386.deb
