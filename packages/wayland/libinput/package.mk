# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2017-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libinput"
PKG_VERSION="1.28.0"
PKG_SHA256="18fc1c8c81e48e86a00df5ecc40ed1e7981aa8560949f26ebf800d698fa1e7cd"
PKG_LICENSE="GPL"
PKG_SITE="https://www.freedesktop.org/wiki/Software/libinput/"
PKG_URL="https://gitlab.freedesktop.org/libinput/libinput/-/archive/${PKG_VERSION}/${PKG_NAME}-${PKG_VERSION}.tar.bz2"
PKG_DEPENDS_TARGET="toolchain systemd libevdev mtdev"
PKG_LONGDESC="libinput is a library to handle input devices in Wayland compositors and to provide a generic X.Org input driver."

PKG_MESON_OPTS_TARGET="-Dlibwacom=false \
                       -Ddebug-gui=false \
                       -Dtests=false \
                       -Ddocumentation=false"
