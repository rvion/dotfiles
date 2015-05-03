#!/bin/bash
set -e

. ~/.dotfiles/function.safely_symlink_file.sh

clone_dependencies() {
    rm -rf ~/.dotfiles/vendors
    mkdir ~/.dotfiles/vendors
    cd  ~/.dotfiles/vendors
    git clone git://github.com/robbyrussell/oh-my-zsh.git --depth=1
    mkdir vim
    cd vim
    mkdir -p autoload
    curl -LSso autoload/pathogen.vim https://tpo.pe/pathogen.vim

    mkdir -p bundle
    cd bundle
    git clone https://github.com/scrooloose/nerdtree --depth=1
    git clone https://github.com/kien/ctrlp.vim --depth=1
    git clone https://github.com/altercation/vim-colors-solarized --depth=1
    git clone https://github.com/airblade/vim-gitgutter --depth=1
    git clone https://github.com/scrooloose/syntastic --depth=1
    git clone https://github.com/tpope/vim-sensible --depth=1
    git clone https://github.com/bling/vim-airline --depth=1
    git clone https://github.com/terryma/vim-multiple-cursors --depth=1
    git clone https://github.com/tomasr/molokai --depth=1
    cd ~/.dotfiles
}

setup_symlinks () {
    local overwrite_all=false backup_all=false skip_all=false
    safely_symlink_file ~/.dotfiles/.gitconfig ~/.gitconfig
    safely_symlink_file ~/.dotfiles/.zshrc     ~/.zshrc
    safely_symlink_file ~/.dotfiles/vendors/vim ~/.vim
}

clone_dependencies
setup_symlinks
