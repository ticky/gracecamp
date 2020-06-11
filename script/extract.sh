#!/usr/bin/env bash
set -xeuo pipefail

# Unpack the original application's resources
yarn exec \
  asar extract \
    "./source/Basecamp 3.app/Contents/Resources/app.asar" \
    "./app.asar.unpacked"

# Duplicate the resources to the location where we want to edit them
cp -r \
  "./app.asar.unpacked/" "./app.asar"
