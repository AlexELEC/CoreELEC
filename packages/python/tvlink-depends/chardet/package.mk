# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2011-present Alex@ELEC (https://alexelec.github.io)

PKG_NAME="chardet"
PKG_VERSION="5.2.0"
PKG_SHA256="07249fb7bdf1fc669e2fb0eba58afe18fe6c5e3187ee806f22969f0e809a32dd"
PKG_LICENSE="LGPL"
PKG_SITE="https://github.com/chardet/chardet"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python3 setuptools:host"
PKG_LONGDESC="Python module for character encoding auto-detection."
PKG_TOOLCHAIN="python"

post_makeinstall_target() {
  python_remove_source

  rm -rf $INSTALL/usr/bin
}
