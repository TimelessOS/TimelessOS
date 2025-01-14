#!/bin/bash

set -eux

# Install MKOSI
mkdir /tmp/mkosi -p
git clone https://github.com/systemd/mkosi /tmp/mkosi || true

# Clear old builds
/tmp/mkosi/bin/mkosi clean -f -f

# Build
time /tmp/mkosi/bin/mkosi \
    --compress-output=zstd \
    --source-date-epoch=0 \
    --seed=5678 \

# Most of these args are just reproducability.