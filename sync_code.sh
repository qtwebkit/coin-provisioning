#!/bin/sh
source $(dirname "$0")/libsync.sh
sync_files \
    coin/provisioning/common/windows/helpers.ps1 \
    coin/provisioning/common/windows/conan.ps1 \
    coin/provisioning/qtci-windows-10-x86/11-conan.ps1 \
    coin/provisioning/qtci-windows-10-x86_64/11-conan.ps1 \
    coin/provisioning/qtci-windows-7-x86/11-conan.ps1
