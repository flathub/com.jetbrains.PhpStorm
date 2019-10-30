#!/usr/bin/env sh

set -e

mkdir phpstorm
tar xf phpstorm.tar.gz --directory=phpstorm/ --strip-components=1
rm -f phpstorm.tar.gz
