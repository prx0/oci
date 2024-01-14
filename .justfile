# generic recipe to run a build.sh from a subdirectory
recipe-build dir:
	cd $(git rev-parse --show-toplevel) \
		&& cd {{dir}} && ./build.sh

# build a fedora dev oci image
fedora-dev-build:
	just recipe-build fedora-dev

# download, build and install helix editor
helix-install: fedora-dev-build
	just recipe-build helix-builder
