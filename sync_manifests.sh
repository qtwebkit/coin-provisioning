#!/bin/sh
BRANCH=$(git rev-parse --abbrev-ref HEAD)

git checkout qt5/$BRANCH \
    coin/provisioning/common/windows/conan_manifests \
&& git commit -m "Sync files with qt5/$BRANCH"
