# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="setuptools"
PKG_VERSION="80.3.0"
PKG_SHA256="ec8308eb180b2312062b1c5523204acf872cd8b0a9e6c2ae76431b22bc4065d7"
PKG_LICENSE="OSS"
PKG_SITE="https://pypi.org/project/setuptools"
PKG_URL="https://files.pythonhosted.org/packages/source/${PKG_NAME:0:1}/${PKG_NAME}/${PKG_NAME,,}-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_HOST="pybuild:host"
PKG_LONGDESC="Replaces Setuptools as the standard method for working with Python module distributions."
PKG_TOOLCHAIN="python"
