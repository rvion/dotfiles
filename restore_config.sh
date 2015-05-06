#!/bin/bash
set -e
. ~/.dotfiles/install/safely_symlink_file.function

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
  # safely_symlink_file ~/.dotfiles/.gitconfig ~/.gitconfig
  safely_symlink_file ~/.dotfiles/.zshrc     ~/.zshrc
  # safely_symlink_file ~/.dotfiles/vendors/vim ~/.vim
  # safely_symlink_file ~/.dotfiles/vendors/vimrc ~/.vimrc
  # safely_symlink_file ~/.dotfiles/.irbrc ~/.irbrc
  # safely_symlink_file ~/.dotfiles/.ssh/config ~/.ssh/config
  info 'installing dotfiles'

  for src in $(find ~/.dotfiles -maxdepth 2 -name '*.symlink')
  do
    dst="$HOME/$(basename "${src%.*}")"
    echo $dst
    safely_symlink_file "$src" "$dst"
  done

}

# clone_dependencies
setup_symlinks
find . -name "*init.sh" | while read installer ; do sh -c "echo $installer" ; done
find . -name "*init.sh" | while read installer ; do sh -c "echo $installer" ; done
