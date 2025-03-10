# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2019-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="tinyxml2"
PKG_VERSION="10.1.0"
PKG_SHA256="9da7e1aebbf180ef6f39044b9740a4e96fa69e54a01318488512ae92ca97a685"
PKG_LICENSE="zlib"
PKG_SITE="http://www.grinninglizard.com/tinyxml2/index.html"
PKG_URL="https://github.com/leethomason/tinyxml2/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="TinyXML2 is a simple, small, C++ XML parser."

PKG_MESON_OPTS_TARGET="-Ddefault_library=static \
                       -Dtests=false"
