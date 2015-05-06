#!/bin/bash
set -e
platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
   ~/.dotfiles/setup/ubuntu.setup
elif [[ "$unamestr" == 'Darwin' ]]; then
   ~/.dotfiles/setup/osx.setup
fi

