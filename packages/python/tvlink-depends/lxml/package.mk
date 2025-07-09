# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2011-present Alex@ELEC (http://alexelec.github.io)

PKG_NAME="lxml"
PKG_VERSION="5.4.0"
PKG_SHA256="12ed971a99bd07977e236bf59314cfd53fbf5d59f39d4a13caad901c7fceb0a2"
PKG_LICENSE="BSD"
PKG_SITE="https://github.com/lxml/lxml"
PKG_URL="$PKG_SITE/archive/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python3 setuptools:host cython:host libxslt:host libxml2 libxslt"
PKG_LONGDESC="The lxml XML toolkit for Python."
PKG_TOOLCHAIN="python"

post_makeinstall_target() {
  python_remove_source
}
