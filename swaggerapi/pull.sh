#!/usr//bin/env bash
set -euxo pipefail

source .config

docker pull ${CONTAINER_IMAGE}

