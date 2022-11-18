#!/bin/bash
set -e
# use compose provided
# see contrib/docker-compose.yml to get started

docker run \
  --rm \
  --name nominatim \
  --shm-size=1g \
  -e PBF_URL=https://download.geofabrik.de/north-america/us-pacific-latest.osm.pbf \
  -e REPLICATION_URL=https://download.geofabrik.de/north-america/us-pacific-updates/ \
  -e IMPORT_WIKIPEDIA=false \
  -e NOMINATIM_PASSWORD=isthisit \
  -v nominatim-pacific-data:/var/lib/postgresql/12/main \
  -p 8080:8080 \
  -p 5432:5432 \
  -d mediagis/nominatim:4.0

