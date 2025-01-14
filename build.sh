#!/bin/bash

set -eux

# Install MKOSI
mkdir /tmp/mkosi -p
git clone https://github.com/systemd/mkosi /tmp/mkosi || true

# Build
time /tmp/mkosi/bin/mkosi \
   --dependency=base # Only build base.