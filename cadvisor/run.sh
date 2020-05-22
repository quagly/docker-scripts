#!/usr/bin/env bash
set -euxo pipefail

docker run \
  --volume=/:/rootfs:ro \
  --volume=/var/run:/var/run:rw \
  --volume=/sys:/sys:ro \
  --volume=/var/lib/docker/:/var/lib/docker:ro \
  --publish=7000:8080 \
  --detach=true \
  --name=cadvisor \
  google/cadvisor:latest

echo -n "connect to webui at http://localhost:7000"
