# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2019-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="Pillow"
PKG_VERSION="11.2.1"
PKG_SHA256="67dd6d40e282fd3b50189bd7f68a6e9b8e59b297d3684cb35ab107e7aec8379e"
PKG_LICENSE="BSD"
PKG_SITE="https://python-pillow.org/"
PKG_URL="https://github.com/python-pillow/${PKG_NAME}/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python3 zlib freetype libjpeg-turbo tiff"
PKG_LONGDESC="The Python Imaging Library adds image processing capabilities to your Python interpreter."
PKG_TOOLCHAIN="python"

PKG_PYTHON_OPTS_TARGET="-C--build-option=build_ext -C--build-option=--disable-platform-guessing"

post_makeinstall_target() {
  python_remove_source

  rm -rf ${INSTALL}/usr/bin
}
