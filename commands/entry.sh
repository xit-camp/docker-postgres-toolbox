#!/usr/bin/env bash

set -e

[ "$DEBUG" == 'true' ] && set -x

. "$(dirname $0)/"common.sh

(
    echo "${HOST}:${PORT}:*:${USER}:${PASS}"
) > ~/.pgpass && chmod 600 ~/.pgpass

$PSQL -c "show statement_timeout;"

if [ -f "/commands/$1" ]; then
    exec "/commands/$@"
else
    echo "Running command $@"
    exec "$@"
fi
