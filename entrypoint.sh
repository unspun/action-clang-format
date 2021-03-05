#!/bin/sh -l

# Testing script for CI.

# echo commands and exit with failure if any commands fail
set -ex

apt-get update

apt-get install -y \
    clang-format

# Check formatting
./format/check.sh
format_ret=$?

# disable echo for summaries
set +x

# print summaries
echo format return $format_ret

status=$(format_ret)
echo exit status $status

exit $status
