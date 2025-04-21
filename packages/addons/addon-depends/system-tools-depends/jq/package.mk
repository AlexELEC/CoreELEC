# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="jq"
PKG_VERSION="aea8efaf0bc99ad5776038380f68939fef2fd0cb"
PKG_SHA256="71191c9386e2311600cadf944ec584feb155d1cc786662ab48d5b75abe632462"
PKG_LICENSE="MIT"
PKG_SITE="https://jqlang.github.io/jq/"
PKG_URL="https://github.com/jqlang/jq/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain oniguruma"
PKG_LONGDESC="Command-line JSON processor"
PKG_BUILD_FLAGS="-sysroot"
PKG_TOOLCHAIN="autotools"

PKG_CONFIGURE_OPTS_TARGET="--disable-shared \
                           --enable-static \
                           --disable-docs \
                           --disable-maintainer-mode \
                           --disable-valgrind"
