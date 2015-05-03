#!/bin/bash
set -e

. ~/.dotfiles/function.safely_symlink_file.sh

clone_dependencies() {
    rm -rf ~/.dotfiles/vendors
    mkdir ~/.dotfiles/vendors
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.dotfiles/vendors/oh-my-zsh --depth=1
}

setup_symlinks () {
    local overwrite_all=false backup_all=false skip_all=false
    safely_symlink_file ~/.dotfiles/.gitconfig ~/.gitconfig
    safely_symlink_file ~/.dotfiles/.zshrc     ~/.zshrc
}

clone_dependencies
setup_symlinks
