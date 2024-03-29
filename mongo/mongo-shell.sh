#!/usr/bin/env bash
set -eauo pipefail

mongo "mongodb://localhost:27017" \
  --username ${MONGODB_USERNAME} \
  --password ${MONGODB_PASSWORD} \
  --authenticationDatabase admin
