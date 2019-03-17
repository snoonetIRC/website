#!/usr/bin/env bash

SRC_DIR="${HOME}/src"

echo "Installing Hugo Extended Edition ^TM"
mkdir -p $SRC_DIR
pushd $SRC_DIR
git clone https://github.com/gohugoio/hugo.git
cd hugo
go install --tags extended
echo "Hugo installation complete."
popd

