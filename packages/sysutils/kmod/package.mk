# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)

PKG_NAME="kmod"
PKG_VERSION="34.1"
PKG_SHA256="125957c9125fc5db1bd6a2641a1c9a6a0b500882fb8ccf7fb6483fcae5309b17"
PKG_LICENSE="GPL"
PKG_SITE="https://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git"
PKG_URL="https://www.kernel.org/pub/linux/utils/kernel/kmod/${PKG_NAME}-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_HOST="meson:host ninja:host"
PKG_DEPENDS_TARGET="meson:host gcc:host openssl"
PKG_LONGDESC="kmod offers the needed flexibility and fine grained control over insertion, removal, configuration and listing of kernel modules."
PKG_BUILD_FLAGS="-gold -mold"

PKG_MESON_OPTS_COMMON="-Dbashcompletiondir=no \
                       -Dfishcompletiondir=no \
                       -Dzshcompletiondir=no \
                       -Dzstd=disabled \
                       -Dxz=disabled \
                       -Dzlib=disabled \
                       -Dopenssl=enabled \
                       -Dtools=true \
                       -Ddebug-messages=false \
                       -Dbuild-tests=false \
                       -Dmanpages=false \
                       -Ddocs=false"

PKG_MESON_OPTS_HOST="${PKG_MESON_OPTS_COMMON} \
                     -Dlogging=false"

PKG_MESON_OPTS_TARGET="${PKG_MESON_OPTS_COMMON} \
                       -Dlogging=true"

post_makeinstall_host() {
  ln -sf kmod ${TOOLCHAIN}/bin/depmod
}

post_makeinstall_target() {
  # make symlinks for compatibility
  mkdir -p ${INSTALL}/usr/sbin
    ln -sf /usr/bin/kmod ${INSTALL}/usr/sbin/lsmod
    ln -sf /usr/bin/kmod ${INSTALL}/usr/sbin/insmod
    ln -sf /usr/bin/kmod ${INSTALL}/usr/sbin/rmmod
    ln -sf /usr/bin/kmod ${INSTALL}/usr/sbin/modinfo
    ln -sf /usr/bin/kmod ${INSTALL}/usr/sbin/modprobe
    ln -sf /usr/bin/kmod ${INSTALL}/usr/sbin/depmod

  mkdir -p ${INSTALL}/etc
    rmdir ${INSTALL}/etc/modprobe.d
    ln -sf /storage/.config/modprobe.d ${INSTALL}/etc/modprobe.d

  # add user modprobe.d dir
  mkdir -p ${INSTALL}/usr/config/modprobe.d
}
