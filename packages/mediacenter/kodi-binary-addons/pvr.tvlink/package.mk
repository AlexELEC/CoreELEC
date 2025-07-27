# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2011-present AlexELEC (https://alexelec.github.io)

PKG_NAME="pvr.tvlink"
PKG_VERSION="22.0.3"
PKG_SHA256="4b24bbe04bce926eaf05074efc33a6e295696efc14cd7dc313f3f66e419caa1a"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/AlexELEC/pvr.tvlink"
PKG_URL="${PKG_SITE}/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain kodi-platform pugixml zlib xz"
PKG_SECTION=""
PKG_SHORTDESC="pvr.tvlink"
PKG_LONGDESC="pvr.tvlink"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="xbmc.pvrclient"

pre_configure_target() {
  ls -la  ../Findlzma.cmake
  sed -i -e "s#^find_path(LZMA_INCLUDE_DIRS lzma.h#find_path(LZMA_INCLUDE_DIRS lzma.h PATHS $(get_install_dir xz)/usr/include NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH#" \
         -e "s#^find_library(LZMA_LIBRARIES NAMES lzma liblzma#find_library(LZMA_LIBRARIES NAMES lzma liblzma PATHS $(get_install_dir xz)/usr/lib NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH#" ../Findlzma.cmake
}