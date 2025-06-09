# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2019-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libffi"
PKG_VERSION="3.5.0"
PKG_SHA256="8c72678628a5dd8782f08ad421d5a441e42c1c5c1b33e0bc211cbfcf1f3b3978"
PKG_LICENSE="GPL"
PKG_SITE="http://sourceware.org/${PKG_NAME}/"
PKG_URL="https://github.com/libffi/libffi/releases/download/v${PKG_VERSION}/${PKG_NAME}-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_HOST="ccache:host autoconf:host automake:host libtool:host pkg-config:host"
PKG_DEPENDS_TARGET="autotools:host gcc:host"
PKG_LONGDESC="Foreign Function Interface Library."
PKG_TOOLCHAIN="autotools"

PKG_CONFIGURE_OPTS_TARGET="--disable-debug \
                           --enable-static --disable-shared \
                           --with-pic \
                           --enable-structs \
                           --enable-raw-api \
                           --disable-purify-safety \
                           --with-gnu-ld"
