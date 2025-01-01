# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2023-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libxcrypt"
PKG_VERSION="4.4.37"
PKG_SHA256="902aa2976f959b5ebe55679b1722b8479f8f13cd4ce2ef432b0a84ae298fffd0"
PKG_LICENSE="LGPL-2.1"
PKG_SITE="https://github.com/besser82/libxcrypt"
PKG_URL="https://github.com/besser82/libxcrypt/releases/download/v${PKG_VERSION}/${PKG_NAME}-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="glibc"
PKG_LONGDESC="Extended crypt library for descrypt, md5crypt, bcrypt, and others"

if [ "${MOLD_SUPPORT}" = "yes" ]; then
  PKG_DEPENDS_TARGET+=" mold:host"
fi

PKG_CONFIGURE_OPTS_TARGET="--disable-obsolete-api"
