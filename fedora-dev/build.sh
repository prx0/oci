#!/usr/bin/env sh
. ../.utils.sh

set -e

TAG="${TAG:-39}"

"$(oci_client)" build . -t "fedora-dev:${TAG}"

