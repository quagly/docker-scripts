#!/bin/bash
set -e
# use compose provided
# see contrib/docker-compose.yml to get started

docker run \
  --rm \
  --name nominatim \
  --shm-size=1g \
  -e PBF_URL=http://download.geofabrik.de/north-america/us/oregon-latest.osm.pbf \
  # -e REPLICATION_URL=http://download.geofabrik.de/north-america/us/oregon-updates/ \
  -e IMPORT_US_POSTCODES=true
  -e IMPORT_WIKIPEDIA=false \
  -e FREEZE=true \
  -e NOMINATIM_PASSWORD=isthisit \
  -v nominatim-oregon-data:/var/lib/postgresql/12/main \
  -p 8080:8080 \
  -p 5432:5432 \
  -d mediagis/nominatim:4.0

