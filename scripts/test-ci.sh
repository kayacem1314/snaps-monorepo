#!/usr/bin/env bash

set -x
set -e
set -u
set -o pipefail

# We have to use xvfb due to electron
# Ref: https://github.com/facebook-atom/jest-electron-runner/issues/47#issuecomment-508556407
xvfb-run -e /dev/stdout yarn workspace @metamask/snap-controllers test &&
yarn workspace @metamask/iframe-execution-environment-service test