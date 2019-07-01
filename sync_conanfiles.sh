#!/bin/sh
source $(dirname "$0")/libsync.sh
sync_files \
    coin/provisioning/qtci-windows-10-x86/conanfiles \
    coin/provisioning/qtci-windows-10-x86_64/conanfiles \
    coin/provisioning/qtci-windows-7-x86/conanfiles
