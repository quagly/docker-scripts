#!/usr/bin/env bash
set -eau -o pipefail

docker volume inspect $1
