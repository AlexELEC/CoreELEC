# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2025-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="docker-compose"
PKG_VERSION="2.37.2"
PKG_LICENSE="Apache-2.0"
PKG_SITE="https://github.com/docker/compose"
PKG_LONGDESC="Define and run multi-container applications with Docker."
PKG_TOOLCHAIN="manual"

case "${ARCH}" in
  "aarch64")
    PKG_SHA256="d2c195cf553e55d06761c192133a6a7b4d67d275c7f5ce673bbf8ecf20814061"
    PKG_URL="${PKG_SITE}/releases/download/v${PKG_VERSION}/docker-compose-linux-aarch64"
    ;;
  "arm")
    PKG_SHA256="33aa26709150e835992a8af58d590e32151473f78daea549ccd70bd5f96c3bbf"
    PKG_URL="${PKG_SITE}/releases/download/v${PKG_VERSION}/docker-compose-linux-armv7"
    ;;
  "x86_64")
    PKG_SHA256="95db7bb2ed5d5fc790a12559b9092d641637c2d0190939c282b52a7af572a8a7"
    PKG_URL="${PKG_SITE}/releases/download/v${PKG_VERSION}/docker-compose-linux-x86_64"
    ;;
esac

PKG_SOURCE_NAME="docker-compose-linux-${ARCH}-${PKG_VERSION}"

unpack() {
  mkdir -p ${PKG_BUILD}
    cp -P ${SOURCES}/${PKG_NAME}/${PKG_SOURCE_NAME} ${PKG_BUILD}/docker-compose
    chmod +x ${PKG_BUILD}/docker-compose
}
