#!/usr/bin/env bash
set -xeuo pipefail

# Apply the patch file, recursively, without creating any backup files
patch --no-backup-if-mismatch \
  --strip=0 \
  --input=./gracecamp.patch
