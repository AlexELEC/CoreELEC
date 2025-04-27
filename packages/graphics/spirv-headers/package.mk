# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2021-present Frank Hartung (supervisedthinking (@) gmail.com)
# Copyright (C) 2021-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="spirv-headers"
# The SPIRV-Headers pkg_version needs to match the compatible (known_good) glslang pkg_version.
# https://raw.githubusercontent.com/KhronosGroup/glslang/${PKG_VERSION}/known_good.json
# When updating glslang pkg_version please update to the known_good spirv-headers pkg_version.
# When updating spirv-llvm-translator pkg_version validate the minimum githash from 
# https://github.com/KhronosGroup/SPIRV-LLVM-Translator/blob/main/spirv-headers-tag.conf
PKG_VERSION="aa6cef192b8e693916eb713e7a9ccadf06062ceb"
PKG_SHA256="1bf0568bad1f9e30fce8d3199e54ae7ade1c16dbe913b5afd9b499149a9bb9a5"
PKG_LICENSE="Apache-2.0"
PKG_SITE="https://github.com/KhronosGroup/SPIRV-headers"
PKG_URL="https://github.com/KhronosGroup/SPIRV-headers/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_HOST=""
PKG_LONGDESC="SPIRV-Headers"
PKG_TOOLCHAIN="manual"
