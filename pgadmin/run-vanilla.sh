#!/bin/bash
#for debugging
source .config
docker run -p ${PORT}:80 \
        --rm \
        --name ${CONTAINER_NM} \
        -e PGADMIN_DEFAULT_EMAIL=${PGADMIN_DEFAULT_EMAIL} \
        -e PGADMIN_DEFAULT_PASSWORD=$(security find-generic-password -a ${USER} -s pgadmin -w) \
        -d dpage/pgadmin4
