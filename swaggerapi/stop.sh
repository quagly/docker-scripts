#!/usr/local/bin/bash
# stop container
set -euxo pipefail

source .config

docker stop ${CONTAINER_NM}
