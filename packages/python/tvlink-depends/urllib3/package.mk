# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2011-present Alex@ELEC (https://alexelec.github.io)

PKG_NAME="urllib3"
PKG_VERSION="1.26.20"
PKG_SHA256="131a85dd245bcbb0534ec32937662948c365b312dc51ff9928c7ed73227d694a"
PKG_LICENSE="Apache"
PKG_SITE="https://github.com/urllib3/urllib3"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python3 setuptools:host"
PKG_LONGDESC="HTTP library with thread-safe connection pooling and file post support."
PKG_TOOLCHAIN="python"

post_makeinstall_target() {
  python_remove_source
}
