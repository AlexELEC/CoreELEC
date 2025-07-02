# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2022-present Team CoreELEC (https://coreelec.org)

PKG_NAME="CoreELEC-settings"
PKG_VERSION="465de5df12fec8650e92cd73611bb20b85e81009"
PKG_SHA256="2663d9765073b9802e467ce362e75f375d59e70ed4f346f56f1c2e632c487de7"
PKG_LICENSE="GPL"
PKG_SITE="https://coreelec.org"
PKG_URL="https://github.com/CoreELEC/service.coreelec.settings/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python3 connman pygobject dbus-python bkeymaps"
PKG_LONGDESC="CoreELEC-settings: is a settings dialog for CoreELEC"

PKG_MAKE_OPTS_TARGET="DISTRONAME=${DISTRONAME} \
                      ADDON_VERSION=${ADDON_VERSION} \
                      ROOT_PASSWORD=${ROOT_PASSWORD}"

post_makeinstall_target() {
  mkdir -p ${INSTALL}/usr/lib/coreelec
  cp ${PKG_DIR}/scripts/* ${INSTALL}/usr/lib/coreelec

  ADDON_INSTALL_DIR=${INSTALL}/usr/share/kodi/addons/service.coreelec.settings
  python_compile ${ADDON_INSTALL_DIR}/resources/lib/
  python_compile ${ADDON_INSTALL_DIR}/oe.py
}

post_install() {
  enable_service backup-restore.service
  enable_service factory-reset.service
}
