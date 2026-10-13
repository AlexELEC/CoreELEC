# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2011-present AlexELEC (https://alexelec.github.io)

PKG_NAME="pvr.tvlink"
PKG_VERSION="22.0.6"
PKG_SHA256="33e75a5ce51bb98fefb5a1e32d06452d0127b5d39373650a095531408031a2c6"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/AlexELEC/pvr.tvlink"
PKG_URL="${PKG_SITE}/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain tinyxml ${MEDIACENTER}:host pugixml zlib xz"
PKG_SECTION=""
PKG_SHORTDESC="pvr.tvlink"
PKG_LONGDESC="pvr.tvlink"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="xbmc.pvrclient"
