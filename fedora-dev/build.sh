#!/usr/bin/env sh

set -e

podman build . -t fedora-dev:39
