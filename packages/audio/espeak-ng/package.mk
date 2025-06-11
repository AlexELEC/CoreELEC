# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2021-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="espeak-ng"
PKG_VERSION="a06074c8fd80f2fd3632164dc01ebf1135395e11"
PKG_SHA256="6e5ab2c975b46ad126f74f57de9b0a543f301b42d97965710ba81105a6d75232"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/espeak-ng/espeak-ng"
PKG_URL="https://github.com/espeak-ng/espeak-ng/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_HOST="gcc:host"
PKG_DEPENDS_TARGET="toolchain espeak-ng:host"
PKG_LONGDESC="eSpeak NG is an open source speech synthesizer that supports more than a hundred languages and accents"
PKG_BUILD_FLAGS="+pic"

PKG_CMAKE_OPTS_HOST="-DBUILD_SHARED_LIBS=OFF \
                     -DCOMPILE_INTONATIONS=ON \
                     -DENABLE_TESTS=OFF"

PKG_CMAKE_OPTS_TARGET="-DBUILD_SHARED_LIBS=ON \
                       -DCOMPILE_INTONATIONS=OFF \
                       -DENABLE_TESTS=OFF"

post_makeinstall_target() {
  safe_remove ${INSTALL}/usr/share/vim

  mkdir -p ${INSTALL}/usr/share/espeak-ng-data
  cp -prf ${TOOLCHAIN}/share/espeak-ng-data ${INSTALL}/usr/share
  # add symlink for backwards compatibility with old programs
  ln -sf espeak-ng ${INSTALL}/usr/bin/espeak
}
