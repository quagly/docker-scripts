#!/usr/bin/env bash
set -euxo pipefail

# persist data to ~/Documents/code/elastic/data

docker run \
  --name elasticsearch \
  -p 9200:9200 \
  -p 9300:9300  \
  -e "discovery.type=single-node" \
  -e "xpack.security.enabled=false" \
  --mount type=bind,source=${HOME}/Documents/code/elastic/mnt/,target=/mnt \
  --mount type=bind,source=${HOME}/Documents/code/elastic/data/,target=/usr/share/elasticsearch/data \
  --rm \
  docker.elastic.co/elasticsearch/elasticsearch:7.7.0
