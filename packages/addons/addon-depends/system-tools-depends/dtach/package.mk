# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="dtach"
PKG_VERSION="5e3865328e4609f74bd10cb4575e429b8d1b3aa4"
PKG_SHA256="69c6c3da78c530ec74655d6beba0d2d3e16a23ab35b3022d8af691848063cc1e"
PKG_LICENSE="GPL"
PKG_SITE="http://dtach.sourceforge.net"
PKG_URL="https://github.com/crigler/dtach/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="A program that emulates the detach feature of screen."
PKG_BUILD_FLAGS="-sysroot -cfg-libs"

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/bin
  cp -p dtach ${INSTALL}/usr/bin
}
