#!/usr/bin/env sh

. ../.utils.sh

set -e

"$(oci_client)" build . --output=build --target=build
mv build/hx "${HOME}/.local/bin/."
mkdir -p "${HOME}/.config/helix"
ln -Tfs "${PWD}/build/runtime" "${HOME}/.config/helix/runtime"
