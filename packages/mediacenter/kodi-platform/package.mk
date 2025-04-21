# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="kodi-platform"
PKG_VERSION="kodiplatform-20250416"
PKG_SHA256="e559715b37b91e219ea2bb72cff0d0b29cf08386685fd12328520a294bb17b57"
PKG_LICENSE="GPL"
PKG_SITE="http://www.kodi.tv"
PKG_URL="https://github.com/xbmc/kodi-platform/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host p8-platform"
PKG_LONGDESC="kodi-platform:"

PKG_CMAKE_OPTS_TARGET="-DCMAKE_INSTALL_LIBDIR:STRING=lib \
                       -DCMAKE_INSTALL_LIBDIR_NOARCH:STRING=lib \
                       -DBUILD_SHARED_LIBS=OFF"

post_makeinstall_target() {
  rm -rf ${INSTALL}/usr/lib/kodiplatform
}
