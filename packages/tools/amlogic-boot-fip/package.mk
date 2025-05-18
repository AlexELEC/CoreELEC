# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="amlogic-boot-fip"
PKG_LICENSE="nonfree"
PKG_VERSION="16d007ff61f8ba84be7cb47280bb2911eaa87aba"
PKG_SHA256="c5910f7913bc1d634320952daf0afed62e383c4e2eafb71c952bc221cb6b150f"
PKG_SITE="https://github.com/LibreELEC/amlogic-boot-fip"
PKG_URL="https://github.com/LibreELEC/amlogic-boot-fip/archive/${PKG_VERSION}.tar.gz"
PKG_LONGDESC="Firmware Image Package (FIP) sources used to sign Amlogic u-boot binaries in LibreELEC images"
PKG_TOOLCHAIN="manual"
PKG_STAMP="${UBOOT_SYSTEM}"

post_unpack() {
  # rename dirs for alta/solitude
  mv ${PKG_BUILD}/aml-a311d-cc ${PKG_BUILD}/alta
  mv ${PKG_BUILD}/aml-s905d3-cc ${PKG_BUILD}/solitude
}
