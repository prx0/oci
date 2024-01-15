#!/usr/bin/env sh

. ../.utils.sh

set -e

"$(oci_client)" build . --output=build --target=build
mv build/just "${HOME}/.local/bin/."
