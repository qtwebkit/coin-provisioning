#!/bin/sh
BRANCH=$(git rev-parse --abbrev-ref HEAD)

git checkout qt5/$BRANCH \
    coin/provisioning/qtci-windows-10-x86/conanfiles \
    coin/provisioning/qtci-windows-10-x86_64/conanfiles \
    coin/provisioning/qtci-windows-7-x86/conanfiles \
&& git commit -m "Sync files with qt5/$BRANCH"
