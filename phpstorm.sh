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

exec env TMPDIR=${XDG_RUNTIME_DIR}/app/${FLATPAK_ID} \
    /app/extra/phpstorm/bin/phpstorm.sh "$@"
