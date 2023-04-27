#!/usr/bin/env sh

set -o errexit

install --directory --mode=0755 phpstorm/
tar xf phpstorm.tar.gz --directory=phpstorm/ --strip-components=1
rm -f phpstorm.tar.gz
