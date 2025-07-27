# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="screensaver.greynetic"
PKG_VERSION="22.0.3-Piers"
PKG_SHA256="3dd2f8406412a6b4afbaad5bd9cec6ed63848bcc605cef7408b8f44770b6bc37"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/xbmc/screensaver.greynetic"
PKG_URL="https://github.com/xbmc/screensaver.greynetic/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain kodi-platform glm"
PKG_SECTION=""
PKG_SHORTDESC="screensaver.greynetic"
PKG_LONGDESC="screensaver.greynetic"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="xbmc.ui.screensaver"

if [ "${OPENGL}" = "no" ]; then
  exit 0
fi
