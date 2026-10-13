# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2011-present Alex@ELEC (https://alexelec.github.io)

PKG_NAME="six"
PKG_VERSION="1.17.0"
PKG_SHA256="ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
PKG_LICENSE="BSD"
PKG_SITE="http://pypi.python.org/pypi/six/"
PKG_URL="https://pypi.io/packages/source/s/six/six-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python3 setuptools:host"
PKG_LONGDESC="Python 2 and 3 compatibility utilities."
PKG_TOOLCHAIN="python"

post_makeinstall_target() {
  python_remove_source
}
