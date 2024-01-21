# OCI

Collection of custom OCI images for almost everything I need.

Requirements:
- [just](https://github.com/casey/just) command runner

This repository uses `just` as a way to build anything.

Run this command to list avaible just `recipes`.

```
just --list
```

## Build and install

Here's the following recipes to build and install things.

### nushell

```sh
just nushell-install
```

### helix

```sh
just helix-install
```

### just

```sh
cd fedora-dev
./build.sh
cd ../just
./build.sh
```

Or if just is already installed and you simply want to update it

```sh
just just-install
```
