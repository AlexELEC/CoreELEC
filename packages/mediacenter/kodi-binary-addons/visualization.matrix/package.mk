# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2020-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="visualization.matrix"
PKG_VERSION="22.0.1-Piers"
PKG_SHA256="f5f6d7488f6ea2ef8c4fd6e88213e8fe3c882fd5820a917f6df6a3a358a83429"
PKG_REV="1"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/xbmc/visualization.matrix"
PKG_URL="https://github.com/xbmc/visualization.matrix/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain kodi-platform glm"
PKG_SECTION=""
PKG_LONGDESC="visualization.matrix"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="xbmc.player.musicviz"

if [ ! "${OPENGL}" = "no" ]; then
  # for OpenGL (GLX) support
  PKG_DEPENDS_TARGET+=" ${OPENGL} glew"
fi

if [ "${OPENGLES_SUPPORT}" = yes ]; then
  # for OpenGL-ES support
  PKG_DEPENDS_TARGET+=" ${OPENGLES}"
fi
