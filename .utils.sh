#!/usr/bin/env sh

set -e

oci_client() {
  if type podman > /dev/null; then
    echo "podman"
  elif type docker > /dev/null; then
    echo "docker"
  else
    echo "Required oci client like podman or docker"
    exit 1
  fi
}

