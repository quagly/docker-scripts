#!/bin/bash

# login shell

docker run \
  --name elasticsearch \
  -p 9200:9200 \
  -p 9300:9300  \
  -e "discovery.type=single-node" \
  --mount type=bind,source=${HOME}/Documents/code/elastic/mnt/,target=/mnt \
  --rm -it \
  docker.elastic.co/elasticsearch/elasticsearch:7.7.0 \
  bash -il
