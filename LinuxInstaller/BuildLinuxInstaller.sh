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
# 2011-01-30  Vwout       Update to automate creation of binary archive
# 2011-10-19  Vwout       Update to automate creation of source archive
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

cp "${BASE_DIR}"/changelog.txt opensong/opt/OpenSong/CHANGES
cp "${BASE_DIR}"/changelog.txt opensong/DEBIAN/changelog
cp "${BASE_DIR}"/WindowsInstaller/gpl-en.txt opensong/opt/OpenSong/COPYING

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
Homepage: http://sourceforge.net/projects/opensong
Description: managing and presenting worship lyrics, chords and more
 OpenSong is a free software application for managing chords and lyrics 
 sheets (lead sheets), presenting lyrics (and custom slides) using a 
 projector, and much more! Great for worship leaders and musicians!" > opensong/DEBIAN/control

echo "#!/bin/sh
update-desktop-database
" > opensong/DEBIAN/postinst
chmod 755 opensong/DEBIAN/postinst

echo "#!/bin/sh
update-desktop-database
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

echo "This package was debianized by Vwout <vwout@users.sourceforge.net>
    on `date --rfc-2822`.

It was downloaded from:
    <https://opensong.svn.sourceforge.net/svnroot/opensong/source/trunk>

Copyright (C) 2003 - 2011 Sean Lickfold

License:

   This package is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; version 2 dated June, 1991.

   This package is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this package; if not, write to the Free Software
    Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
    02110-1301, USA.

On Debian GNU/Linux systems, the complete text of the GNU General
Public License can be found in '/usr/share/common-licenses/GPL-2'." > opensong/DEBIAN/copyright

cd opensong
find opt -type f -print0 | xargs -0 md5sum >  DEBIAN/md5sums
find usr -type f -print0 | xargs -0 md5sum >> DEBIAN/md5sums
cd ..

if [ -e "opensong_$VERSION-1_i386.deb" ]
then
  rm opensong_$VERSION-1_i386.deb
fi
fakeroot dpkg-deb -b opensong opensong_$VERSION-1_i386.deb

echo "Creating binary packed archive"
cd opensong/opt
fakeroot tar czf ../../opensong_${VERSION}_i386-linux.tar.gz OpenSong
cd ../..

echo "Creating source archive"
if [ -d "opensong_$VERSION" ]
then
  rm -rf opensong_$VERSION
fi
mkdir opensong_$VERSION
svn_root=`svn info .. | grep "URL:" | cut -d" " -f 2`
echo "  .. creating svn snapshot ($svn_root)"
svn co $svn_root opensong_$VERSION
echo "  .. creating archive"
fakeroot tar czf opensong_$VERSION-source.tar.gz --exclude-vcs opensong_$VERSION

