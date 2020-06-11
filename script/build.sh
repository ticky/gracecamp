#!/usr/bin/env bash
set -xeuo pipefail

# Delete any existing version of the modified app
rm -rf './output/Basecamp 3.app'

# Copy the app, honouring symlinks (so that Frameworks don't inflate the size)
cp -R \
  './source/Basecamp 3.app' './output'

# Repack with the modified resources
yarn exec \
  asar pack \
    "./app.asar" \
    "./output/Basecamp 3.app/Contents/Resources/app.asar"

# Remove macOS code signature to prevent "app is damaged" notifications
codesign --remove-signature \
  "./output/Basecamp 3.app"
