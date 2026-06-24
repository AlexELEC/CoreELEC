# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2011-present Alex@ELEC (https://alexelec.github.io)

PKG_NAME="requests"
PKG_VERSION="2.32.3"
PKG_SHA256="f665576fc02d02e7b7f21630b915d70c14288f48decf76fad89b16a9f3975c42"
PKG_LICENSE="Apache"
PKG_SITE="https://github.com/requests/requests"
PKG_URL="$PKG_SITE/archive/v$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python3 setuptools:host chardet idna python-certifi urllib3"
PKG_LONGDESC="Python HTTP for Humans."
PKG_TOOLCHAIN="python"

post_makeinstall_target() {
  python_remove_source
}
