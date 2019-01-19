#!/bin/bash

LAST=`pwd`
echo "Installing Hugo Extended Edition ^TM"
mkdir $HOME/src
cd $HOME/src
git clone https://github.com/gohugoio/hugo.git
cd hugo
go install --tags extended
echo "Hugo installation complete. Returning to $LAST"
cd $LAST