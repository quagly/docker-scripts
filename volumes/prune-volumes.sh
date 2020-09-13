#!/usr/bin/env bash
set -eau -o pipefail

# remove every volume not attached to a container
docker volume prune
