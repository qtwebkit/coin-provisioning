#!/bin/sh
BRANCH=$(git rev-parse --abbrev-ref HEAD)

git checkout qt5/$BRANCH \
    coin/provisioning/common/windows/helpers.ps1 \
    coin/provisioning/common/windows/03-conan.ps1 \
    coin/provisioning/qtci-windows-10-x86/03-conan.ps1 \
    coin/provisioning/qtci-windows-10-x86_64/03-conan.ps1 \
    coin/provisioning/qtci-windows-7-x86/03-conan.ps1 \
&& git commit -m "Sync files with qt5/$BRANCH"
