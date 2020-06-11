#!/usr/bin/env bash
set -xeuo pipefail

# Create a unified, recursive diff of the app.asar directory
diff --unified --recursive \
  ./app.asar.unpacked ./app.asar \
  > ./gracecamp.patch
