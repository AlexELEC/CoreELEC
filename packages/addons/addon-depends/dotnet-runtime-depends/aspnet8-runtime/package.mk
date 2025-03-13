# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2023-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="aspnet8-runtime"
PKG_VERSION="8.0.14"
PKG_LICENSE="MIT"
PKG_SITE="https://dotnet.microsoft.com/"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="ASP.NET Core Runtime enables you to run existing web/server applications."
PKG_TOOLCHAIN="manual"

case "${ARCH}" in
  "aarch64")
    PKG_SHA256="608721534ee7705bc269c43220d6521b1c147475ebc581a8de9411f84fd632d9"
    PKG_URL="https://download.visualstudio.microsoft.com/download/pr/c7cf0f96-e75f-4376-9f4b-fb10b2129d0b/a0eeda2100a9fd1858b95c8d9267fa51/aspnetcore-runtime-8.0.14-linux-arm64.tar.gz"
    ;;
  "arm")
    PKG_SHA256="135f9c49bfb7b0a6b7e95e420fdc8783743705904ccde62e7f4b153d597699c7"
    PKG_URL="https://download.visualstudio.microsoft.com/download/pr/8e39953f-874d-4d34-a41d-2f0f761d9657/0ecb320781f83fb3a94620e1dae6fe27/aspnetcore-runtime-8.0.14-linux-arm.tar.gz"
    ;;
  "x86_64")
    PKG_SHA256="beb58baaf8aeab23a7a77caa25547f7d5adb9a1d397d5a84e81860a069966039"
    PKG_URL="https://download.visualstudio.microsoft.com/download/pr/b901af61-a4e5-41db-9402-f6a035bf3ffc/af3e800d44ced22133fd88f8b7bc4ac0/aspnetcore-runtime-8.0.14-linux-x64.tar.gz"
    ;;
esac
PKG_SOURCE_NAME="aspnetcore-runtime_${PKG_VERSION}_${ARCH}.tar.gz"
