#!/bin/sh
set -e

mix deps.get
(cd assets && npm install)
(cd assets && ./node_modules/brunch/bin/brunch b -p)
MIX_ENV=integration_test mix release
docker-compose up
