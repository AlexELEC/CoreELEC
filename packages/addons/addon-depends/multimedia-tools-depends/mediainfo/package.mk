# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="mediainfo"
PKG_VERSION="25.03"
PKG_SHA256="c293bb30f231dc5310b980efd84fe7d336b8310b68e83265cf166d7f7fc386c9"
PKG_LICENSE="GPL"
PKG_SITE="https://mediaarea.net/en/MediaInfo/Download/Source"
PKG_URL="https://mediaarea.net/download/source/mediainfo/${PKG_VERSION}/mediainfo_${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain libmediainfo"
PKG_DEPENDS_CONFIG="libzen libmediainfo"
PKG_LONGDESC="A convenient unified display of the most relevant technical and tag data for video and audio files."
PKG_TOOLCHAIN="manual"
PKG_BUILD_FLAGS="-sysroot"

configure_target() {
  cd Project/GNU/CLI
  do_autoreconf
  ./configure \
        --host=${TARGET_NAME} \
        --build=${HOST_NAME} \
        --prefix=/usr
}

make_target() {
  make
}

makeinstall_target() {
  make install DESTDIR=${INSTALL}
}
