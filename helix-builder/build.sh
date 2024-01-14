#!/usr/bin/env sh

set -e

podman build . --output=build --target=helix
mv build/hx "${HOME}/.local/bin/."
mkdir -p "${HOME}/.config/helix"
ln -Tfs "${PWD}/build/runtime" "${HOME}/.config/helix/runtime"
