#!/bin/bash

set -eux

./build.sh

# Delete all symlinks
find mkosi.output -maxdepth 1 -type l -delete

# Delete all subdirs
rm -rf -- mkosi.output/*/

# Delete base garbage
rm mkosi.output/base_*

zstd --exclude-compressed *

echo You should now copy the artifacts onto the development server. Upon testing, they should be moved onto the main server.