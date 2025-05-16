# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2017-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="cargo-snapshot"
PKG_VERSION="$(get_pkg_version rust)"
PKG_LICENSE="MIT"
PKG_SITE="https://www.rust-lang.org"
PKG_LONGDESC="cargo bootstrap package"
PKG_TOOLCHAIN="manual"

case "${MACHINE_HARDWARE_NAME}" in
  "aarch64")
    PKG_SHA256="51e237e7f383840a404a5be721491a8ca4671bf9c14e62566ecadccfcc6e4291"
    PKG_URL="https://static.rust-lang.org/dist/cargo-${PKG_VERSION}-${MACHINE_HARDWARE_NAME}-unknown-linux-gnu.tar.xz"
    ;;
  "arm")
    PKG_SHA256="661376af716de8d6abf943891bc0d8ff6b1733d97ee7da9be92820b8e11d20d1"
    PKG_URL="https://static.rust-lang.org/dist/cargo-${PKG_VERSION}-${MACHINE_HARDWARE_NAME}-unknown-linux-gnueabihf.tar.xz"
    ;;
  "x86_64")
    PKG_SHA256="469d5dc479835adadd728bc3587f8abf1941b3dd71f9865abd3e0783ae662555"
    PKG_URL="https://static.rust-lang.org/dist/cargo-${PKG_VERSION}-${MACHINE_HARDWARE_NAME}-unknown-linux-gnu.tar.xz"
    ;;
esac
PKG_SOURCE_NAME="cargo-snapshot_${PKG_VERSION}_${ARCH}.tar.xz"
