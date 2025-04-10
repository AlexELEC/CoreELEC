# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2023-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="aspnet8-runtime"
PKG_VERSION="8.0.15"
PKG_LICENSE="MIT"
PKG_SITE="https://dotnet.microsoft.com/"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="ASP.NET Core Runtime enables you to run existing web/server applications."
PKG_TOOLCHAIN="manual"

case "${ARCH}" in
  "aarch64")
    PKG_SHA256="2df1872a8df62009a0afbb15f785033fa050e898d812dff5310284cba414119a"
    PKG_URL="https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/8.0.15/aspnetcore-runtime-8.0.15-linux-arm64.tar.gz"
    ;;
  "arm")
    PKG_SHA256="7e57f629cedfa787957e93546d8d82277d045447bd5c92929b4be00c15c3a239"
    PKG_URL="https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/8.0.15/aspnetcore-runtime-8.0.15-linux-arm.tar.gz"
    ;;
  "x86_64")
    PKG_SHA256="88bd3e4c7cc6d34bad9d5640d8eef4dd7c6d4293240d328751bdcf8b967b8f6b"
    PKG_URL="https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/8.0.15/aspnetcore-runtime-8.0.15-linux-x64.tar.gz"
    ;;
esac
PKG_SOURCE_NAME="aspnetcore-runtime_${PKG_VERSION}_${ARCH}.tar.gz"
