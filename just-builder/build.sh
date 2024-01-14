#!/usr/bin/env sh

set -e

podman build . --output=build --target=just
mv build/just "${HOME}/.local/bin/."
