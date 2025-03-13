# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2018-present Team CoreELEC (https://coreelec.org)

PKG_NAME="CoreELEC-Debug-Scripts"
PKG_VERSION="531c010f655a3faca187dd0fe9badb30d9284f97"
PKG_SHA256="a520c512d554e6c018689b98e0e60e01a48ab5c939c035af2d20496d7f584a81"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/CoreELEC/CoreELEC-Debug-Scripts"
PKG_URL="https://github.com/CoreELEC/CoreELEC-Debug-Scripts/archive/${PKG_VERSION}.tar.gz"
PKG_SOURCE_NAME="${PKG_NAME}-${PKG_VERSION}.tar.gz"
PKG_LONGDESC="A set of scripts to help debug user issues with CoreELEC"
PKG_TOOLCHAIN="manual"


makeinstall_target() {
  mkdir -p ${INSTALL}/usr/bin
    install -m 0755 debug-scripts-helper.sh ${INSTALL}/usr/bin/debug-scripts-helper.sh
    install -m 0755 dispinfo.sh ${INSTALL}/usr/bin/dispinfo
    install -m 0755 remoteinfo.sh ${INSTALL}/usr/bin/remoteinfo
    install -m 0755 audinfo.sh ${INSTALL}/usr/bin/audinfo
    install -m 0755 ce-debug.sh ${INSTALL}/usr/bin/ce-debug
}
