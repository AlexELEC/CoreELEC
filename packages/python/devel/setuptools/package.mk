# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="setuptools"
PKG_VERSION="79.0.0"
PKG_SHA256="9828422e7541213b0aacb6e10bbf9dd8febeaa45a48570e09b6d100e063fc9f9"
PKG_LICENSE="OSS"
PKG_SITE="https://pypi.org/project/setuptools"
PKG_URL="https://files.pythonhosted.org/packages/source/${PKG_NAME:0:1}/${PKG_NAME}/${PKG_NAME,,}-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_HOST="pybuild:host"
PKG_LONGDESC="Replaces Setuptools as the standard method for working with Python module distributions."
PKG_TOOLCHAIN="python"
