#!/usr/local/bin/bash

set -euxo pipefail

source .config

docker run -it ${CONTAINER_IMAGE} bash

