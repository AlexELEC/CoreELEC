# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2017-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="iwlwifi-firmware"
PKG_VERSION="e1616ba80b84271dd61266047be57be906688e27"
PKG_SHA256="58d13bc4f8c5212b01afb1c7d4d2e929082a044d069525b4368269fd4f1db6a8"
PKG_LICENSE="Free-to-use"
PKG_SITE="https://github.com/LibreELEC/iwlwifi-firmware"
PKG_URL="https://github.com/LibreELEC/iwlwifi-firmware/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="iwlwifi-firmware: firmwares for various Intel WLAN drivers"
PKG_TOOLCHAIN="manual"

makeinstall_target() {
  DESTDIR=${INSTALL}/$(get_kernel_overlay_dir) ./install
}
