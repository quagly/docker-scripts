#!/bin/bash
# standard way to run
# that saves state between sessions
# no need to use servers.json
# -v ${HOME}/pgadmin/servers.json:/servers.json \
# the /var/lib/pgadmin seems to save all state
set -e

source .config

docker run -p ${PORT}:80 \
        --rm \
        --name ${CONTAINER_NM} \
        -v ${HOME}/pgadmin/lib:/var/lib/pgadmin \
        -e PGADMIN_DEFAULT_EMAIL=${PGADMIN_DEFAULT_EMAIL} \
        -e PGADMIN_DEFAULT_PASSWORD="local" \
        -d dpage/pgadmin4


echo "http://localhost:9000/login?next=%2F"
echo -n
