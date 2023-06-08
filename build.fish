#!/usr/bin/fish

# Usage:
# ./build make left
docker run --rm -it --name zmk-build \
  -v (pwd)/../zmk:/workspaces/zmk \
  -v (pwd):/zmk-config \
  -v (pwd)/out:/out zmk-build \
  $argv
