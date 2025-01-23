# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libnfs"
PKG_VERSION="7afd17d094c8e564bf13e2dfe7bc60dc2e4fada8"
PKG_SHA256="4a375b1bd3cc6b4ff2b5527044fe35acde260e43927087ee4efdcee95082ee0f"
PKG_LICENSE="LGPL2.1+"
PKG_SITE="https://github.com/sahlberg/libnfs"
PKG_URL="https://github.com/sahlberg/libnfs/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="A client library for accessing NFS shares over a network."
PKG_TOOLCHAIN="autotools"

PKG_CONFIGURE_OPTS_TARGET="--disable-examples \
                           --without-libkrb5"

pre_configure_target() {
  export CFLAGS="${CFLAGS} -D_FILE_OFFSET_BITS=64"
}
