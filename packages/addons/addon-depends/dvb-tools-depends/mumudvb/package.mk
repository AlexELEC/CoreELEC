# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2017-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="mumudvb"
PKG_VERSION="ab6222a9e60473d243a56dff6c5662725e3f9524"
PKG_SHA256="aa269f532d9285311a6d51f90226cfb5fc82b6cb8b564fc0ac7dec095d5e7cff"
PKG_LICENSE="GPL"
PKG_SITE="http://mumudvb.net/"
PKG_URL="https://github.com/braice/MuMuDVB/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain libdvbcsa"
PKG_LONGDESC="MuMuDVB (Multi Multicast DVB) is a program that streams from DVB on a network using multicasting or unicast"
PKG_TOOLCHAIN="autotools"
PKG_BUILD_FLAGS="-sysroot -cfg-libs"
