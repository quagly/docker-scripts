#!/usr/bin/env bash

set -euxo pipefail

# get status every 10 seconds
/usr/local/bin/redis-cli --stat -i 10
