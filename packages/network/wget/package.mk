# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2011-present Alex@ELEC (http://alexelec.github.io)

PKG_NAME="wget"
PKG_VERSION="1.25.0"
PKG_SHA256="766e48423e79359ea31e41db9e5c289675947a7fcf2efdcedb726ac9d0da3784"
PKG_LICENSE="GPL"
PKG_SITE="https://www.gnu.org/software/wget/"
PKG_URL="https://mirror.ihost.md/gnu/wget/${PKG_NAME}-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain openssl pcre2"
PKG_LONGDESC="wget: A non-interactive network retriever"
PKG_TOOLCHAIN="autotools"

PKG_CONFIGURE_OPTS_TARGET="--disable-nls \
                           --disable-rpath \
                           --with-gnu-ld \
                           --with-ssl=openssl \
                           --with-openssl=yes"

post_makeinstall_target() {
  rm -rf $INSTALL/etc
}
