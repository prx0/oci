# nushell-builder

This repos allows to download, build and install [nushell](https://www.nushell.sh/) using a container.

Requirements:
- It uses `fedora-dev` image from [there](../fedora-dev) with openssl-devel as dependency.
- podman or docker
- sh must be available on your system

Execute the `build.sh` script to download, build and install helix.

```sh
./build.sh
```
