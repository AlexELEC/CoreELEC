# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2011-present Alex@ELEC (https://alexelec.github.io)

PKG_NAME="idna"
PKG_VERSION="3.10"
PKG_SHA256="04f6b013c384deca20a165a4cdf36823465a81c2bb914c40b543802d39e1cb1a"
PKG_LICENSE="BSD"
PKG_SITE="https://github.com/kjd/idna"
PKG_URL="$PKG_SITE/archive/v$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python3 setuptools:host"
PKG_LONGDESC="Internationalized Domain Names in Applications (IDNA)."
PKG_TOOLCHAIN="python"

post_makeinstall_target() {
  python_remove_source
}
