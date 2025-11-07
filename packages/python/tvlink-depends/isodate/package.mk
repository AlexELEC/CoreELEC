# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2011-present Alex@ELEC (https://alexelec.github.io)

PKG_NAME="isodate"
PKG_VERSION="17cb25e"
PKG_SHA256="725e14c60a0a7457e1818f1641b3b3fe6544692f637ffd82c3b1d4c3bf20a427"
PKG_LICENSE="BSD"
PKG_SITE="https://github.com/gweis/isodate"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python3 setuptools:host"
PKG_LONGDESC="ISO 8601 date/time parser."
PKG_TOOLCHAIN="python"

post_unpack() {
  # add version.py
  echo 'version = "0.7.2"' > ${PKG_BUILD}/src/isodate/version.py
}

post_makeinstall_target() {
  python_remove_source
}
