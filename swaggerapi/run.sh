#!/usr//bin/env bash
set -euxo pipefail

source .config
docker run -p ${PORT}:8080 \
        --rm \
        --name ${CONTAINER_NM} \
        -d ${CONTAINER_IMAGE}


echo "connect at http://localhost:${PORT}"
echo -n
