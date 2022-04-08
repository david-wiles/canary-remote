#!/bin/bash

# Usage: ./package.sh [DIRECTORY]

PKG=$(basename $(dirname $1))
VERSION=$(basename $1)

TAR="$PKG"_"$VERSION.tar.gz"
SUM="$PKG"_"$VERSION.tar.gz.sum"

tar -C "./sources" -zcvf $TAR "$PKG/$VERSION"
sha256sum $TAR > $SUM

mkdir -p ./www/$PKG
mv $TAR $SUM ./www/$PKG
