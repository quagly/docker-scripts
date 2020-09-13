#!/usr/bin/env bash
set -eau -o pipefail

# bind mount pwd into /source in the container

# mount (and create if doesn't exist) named volume test_volume
# into /dest directory in the container

# copy local ./files/test-file into volume
docker run --rm \
  --volume $PWD:/source \
  --volume test_volume:/dest \
  --workdir /source \
  alpine \
  cp ./files/test-file.txt /dest
