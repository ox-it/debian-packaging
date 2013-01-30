#!/bin/sh -e

VERSION=$2
ZIP=../jena-$VERSION-source-release.zip
rm -rf jena-$VERSION
unzip $ZIP > /dev/null
tar -czf ../jena_$VERSION.orig.tar.gz jena-$VERSION
rm -rf jena-$VERSION
tar xf ../jena_$VERSION.orig.tar.gz --strip-components=1
