#!/bin/bash
set -e

docker run -it --rm \
  -e PBF_URL=https://download.geofabrik.de/north-america/us-pacific-latest.osm.pbf \
  -e REPLICATION_URL=https://download.geofabrik.de/north-america/us-pacific-updates/ \
  -p 8080:8080 \
  --name nominatim-vanilla \
  mediagis/nominatim:4.0
