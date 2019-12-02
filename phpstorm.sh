#!/usr/bin/env sh

set -e

if [[ -d /usr/lib/sdk/node10 ]]; then
  . /usr/lib/sdk/node10/enable.sh
fi

if [[ -d /usr/lib/sdk/php73 ]]; then
  . /usr/lib/sdk/php73/enable.sh
fi

if [[ -d /usr/lib/sdk/php74 ]]; then
  . /usr/lib/sdk/php74/enable.sh
fi

exec env JAVA_TOOL_OPTIONS=-Djava.io.tmpdir=${XDG_CACHE_HOME}/tmp/ \
    TMPDIR=${XDG_CACHE_HOME}/tmp/ \
    /app/extra/phpstorm/bin/phpstorm.sh "$@"
