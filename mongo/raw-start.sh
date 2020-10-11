#!/usr/bin/env bash
set -euxo pipefail

# this starts mongo without authentication/authorization
# or any initialization of users, collections, or data

# can login with just `mongo` or `mongosh`
# from commandline with no arguments
# defaults to test database
MONGO_VERSION=4.4

docker run \
  --rm \
  --name raw-mongo \
  --detach=true \
  --publish 27017:27017 \
  mongo:${MONGO_VERSION} \
    --wiredTigerCacheSizeGB 1.0
