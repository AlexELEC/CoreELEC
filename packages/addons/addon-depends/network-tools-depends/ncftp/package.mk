# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="ncftp"
PKG_VERSION="3.2.8"
PKG_SHA256="db7da662458a1643209d6869465c38ec811f8975a6ac54fd20c63a3349f7dbf4"
PKG_LICENSE="GPLv3"
PKG_SITE="http://www.ncftp.com/ncftp/"
PKG_URL="https://www.ncftp.com/public_ftp/ncftp/ncftp-${PKG_VERSION}-src.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="NcFTP is a set of application programs implementing the File Transfer Protocol."
PKG_BUILD_FLAGS="-sysroot"

PKG_CONFIGURE_OPTS_TARGET="ac_cv_header_librtmp_rtmp_h=yes \
            --enable-readline \
            --disable-universal \
            --disable-ccdv \
            --without-curses"

pre_configure_target() {
  export CFLAGS="${CFLAGS} -I../"
}

pre_build_target() {
  mkdir -p ${PKG_BUILD}/.${TARGET_NAME}
  cp -RP ${PKG_BUILD}/* ${PKG_BUILD}/.${TARGET_NAME}
}
