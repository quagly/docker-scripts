#!/usr/bin/env bash
set -eau -o pipefail

# mount test_volume into /dest directory
# and list it
docker run --rm \
  --volume test_volume:/dest \
  alpine \
  ls /dest \
