#!/usr/bin/env bash

if [ "$(which yq)" = "" ]; then
    echo "ERROR: yq is required"
    exit 255
fi

# shellcheck disable=SC2002 disable=SC2016 disable=SC2046
yq eval-all '. as $item ireduce ({}; . *+ $item )' $(grep -v -E '^(#|$)' bootstrap.conf | xargs) | yq -I4 -oy -P 'sort_keys(..)' | tee docker-compose.local.yml
