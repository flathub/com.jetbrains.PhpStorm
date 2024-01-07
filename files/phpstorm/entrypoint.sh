#!/usr/bin/env sh

set -o errexit

exec env PHPSTORM_JDK="/app/extra/phpstorm/jbr" /app/bin/phpstorm "$@"
