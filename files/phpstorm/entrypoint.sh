#!/usr/bin/env sh

set -o errexit

exec env PHPSTORM_JDK="/app/extra/phpstorm/jre64" /app/bin/phpstorm "$@"
