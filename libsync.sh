#!/bin/sh

BRANCH=$(git rev-parse --abbrev-ref HEAD)

if !(git remote | grep 'qt5' > /dev/null); then
  git remote add qt5 git://code.qt.io/qt/qt5.git;
fi
git fetch qt5 $BRANCH;

sync_files() {
    echo "Checking out files from qt5/$BRANCH"
    git checkout qt5/$BRANCH -- "$@" && git commit -m "Sync files with qt5/$BRANCH" && git show --stat
}
