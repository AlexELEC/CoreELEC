# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2011-present Alex@ELEC (https://alexelec.github.io)

PKG_NAME="websocket-client"
PKG_VERSION="1.8.0"
PKG_SHA256="03306a5a5afb4e5bffd7fce4e2fb6438be91c14543cf1d6f506893f831047bfc"
PKG_LICENSE="BSD"
PKG_SITE="https://github.com/websocket-client/websocket-client"
PKG_URL="$PKG_SITE/archive/v$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python3 setuptools:host"
PKG_LONGDESC="Websocket client for python."
PKG_TOOLCHAIN="python"

post_makeinstall_target() {
  python_remove_source
}
