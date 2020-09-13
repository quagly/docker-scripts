#!/usr/bin/env bash
set -eau -o pipefail

# interesting to create volumes
# manually just to understand them
# i prefer to create them in docker-compose

docker volume create \
  --driver local \
  --label env=test \
  test_volume

