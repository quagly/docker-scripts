#!/usr/bin/env bash
set -euxo pipefail

# using a running container because
# I am not clear whether zookeeper may be required
# for running kafka command line tools

# cd to kafka bin and get a new shell to keep from exiting
docker exec -u 0 -it kafka_kafka-server1_1 \
  bash -c "cd /opt/bitnami/kafka/bin; exec bash"
