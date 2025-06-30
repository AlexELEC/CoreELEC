# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2023-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="filebrowser"
PKG_VERSION="2.33.6"
PKG_REV="2"
PKG_LICENSE="Apache License 2.0"
PKG_SITE="https://filebrowser.org"
PKG_DEPENDS_TARGET="toolchain:host"
PKG_SECTION="service"
PKG_SHORTDESC="Filebrowser: a web based filemanger"
PKG_LONGDESC="Filebrowser (${PKG_VERSION}): is a web based file managing interface and it can be used to upload, delete, preview, rename and edit your files."
PKG_TAR_STRIP_COMPONENTS="no"
PKG_TOOLCHAIN="manual"

case "${ARCH}" in
  "aarch64")
    PKG_SHA256="4f7ae16300af1936b25400e59d0cadfa0ecd2f6bfceeb5c09469db7d60c872ac"
    PKG_URL="https://github.com/filebrowser/filebrowser/releases/download/v${PKG_VERSION}/linux-arm64-filebrowser.tar.gz"
    ;;
  "arm")
    PKG_SHA256="11af3c9fe5ef01de4cca312ef2bab46e1fb4010b1e88b05693316d8b387d31d0"
    PKG_URL="https://github.com/filebrowser/filebrowser/releases/download/v${PKG_VERSION}/linux-armv7-filebrowser.tar.gz"
    ;;
  "x86_64")
    PKG_SHA256="fc8338841c3c172df6d6a36dd30827eec3bacbbb8f41d954451b93d9028e3bd4"
    PKG_URL="https://github.com/filebrowser/filebrowser/releases/download/v${PKG_VERSION}/linux-amd64-filebrowser.tar.gz"
    ;;
esac
PKG_SOURCE_NAME="filebrowser-${PKG_VERSION}-${ARCH}.tar.gz"

PKG_IS_ADDON="yes"
PKG_ADDON_NAME="Web File Browser"
PKG_ADDON_PROJECTS="any !RPi1"
PKG_ADDON_TYPE="xbmc.service"

addon() {
  mkdir -p ${ADDON_BUILD}/${PKG_ADDON_ID}/bin
  cp -r ${PKG_BUILD}/filebrowser ${ADDON_BUILD}/${PKG_ADDON_ID}/bin
}
