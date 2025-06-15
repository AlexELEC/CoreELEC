# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2023-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="aspnet8-runtime"
PKG_VERSION="8.0.17"
PKG_LICENSE="MIT"
PKG_SITE="https://dotnet.microsoft.com/"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="ASP.NET Core Runtime enables you to run existing web/server applications."
PKG_TOOLCHAIN="manual"

case "${ARCH}" in
  "aarch64")
    PKG_SHA256="a8e2afbfadd9a13a80c710bc0a37ae33eabd701ca76985e77b685b96bfcfcc97"
    PKG_URL="https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/8.0.17/aspnetcore-runtime-8.0.17-linux-arm64.tar.gz"
    ;;
  "arm")
    PKG_SHA256="98d7dec7cb253cd7c3863a2426fc2b24803dd48e27c18c630c8bb6ba550f183b"
    PKG_URL="https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/8.0.17/aspnetcore-runtime-8.0.17-linux-arm.tar.gz"
    ;;
  "x86_64")
    PKG_SHA256="f8944510379f8e1d5a6e7681692225f509f5df348157205d4dbe5b740b85dc98"
    PKG_URL="https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/8.0.17/aspnetcore-runtime-8.0.17-linux-x64.tar.gz"
    ;;
esac
PKG_SOURCE_NAME="aspnetcore-runtime_${PKG_VERSION}_${ARCH}.tar.gz"
