# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2011-present Alex@ELEC (http://alexelec.github.io)

PKG_NAME="cython"
PKG_VERSION="3.1.1"
PKG_SHA256="d0f7bba6bea6b9eace344b587f38e1a3bbd50d896a8529d4215b5ce6f1461566"
PKG_LICENSE="Apache-2.0"
PKG_SITE="http://cython.org/"
PKG_URL="https://github.com/cython/cython/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_HOST="Python3:host setuptools:host"
PKG_LONGDESC="Cython is a language specially designed for writing Python extension modules."
PKG_TOOLCHAIN="manual"

makeinstall_host() {
  exec_thread_safe python3 setup.py install --prefix=$TOOLCHAIN
}

