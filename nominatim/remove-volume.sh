#!/usr/bin/env bash
set -eau -o pipefail

# I think the volume needs to be removed
# to trigger a new import
# not sure
docker volume rm nominatim-data
