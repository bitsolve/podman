#!/bin/bash

echo "start build podman on branch ${BRANCH}"
git clone --branch "${BRANCH}" https://github.com/bitsolve/podman.git
cd podman || exit 1
make install.tools
make binaries

cp -r bin/ "${TARGET_DIR}"

