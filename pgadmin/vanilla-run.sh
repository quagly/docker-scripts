#!/bin/bash
#for debugging
source .config
docker run -p ${PORT}:80 \
        --rm \
        --name ${CONTAINER_NM} \
        -e PGADMIN_DEFAULT_EMAIL=quagly@gmail.com \
        -e PGADMIN_DEFAULT_PASSWORD=test \
        -d dpage/pgadmin4
