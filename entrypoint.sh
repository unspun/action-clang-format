#!/bin/sh -l

# echo commands and exit with failure if any commands fail
set -ex

apt-get update

apt-get install -y \
    clang-format
    
./ci.sh
