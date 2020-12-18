#!/bin/bash

COMMAND="docker"

"${COMMAND}" build -t podman-builder -f podman_builder/Containerfile podman_builder

TARGET_DIR=$(mktemp -d)

"${COMMAND}" run --rm --name podman_builder -v "${TARGET_DIR}:/home/bin" podman-builder

cp -r "${TARGET_DIR}" bin/