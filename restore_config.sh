#!/bin/bash
set -e
. ~/.dotfiles/install/safely_symlink_file.function

setup_symlinks () {
  local overwrite_all=false backup_all=false skip_all=false
  # safely_symlink_file ~/.dotfiles/.gitconfig ~/.gitconfig
  safely_symlink_file ~/.dotfiles/.zshrc     ~/.zshrc
  # safely_symlink_file ~/.dotfiles/vendors/vim ~/.vim
  # safely_symlink_file ~/.dotfiles/vendors/vimrc ~/.vimrc
  # safely_symlink_file ~/.dotfiles/.irbrc ~/.irbrc
  # safely_symlink_file ~/.dotfiles/.ssh/config ~/.ssh/config
  info 'installing dotfiles'

  for src in $(find ~/.dotfiles -maxdepth 3 -name '*.symlink')
  do
    dst="$HOME/$(basename "${src%.*}")"
    safely_symlink_file "$src" "$dst"
  done

}

# clone_dependencies
setup_symlinks
# find . -name "*init.sh" | while read installer ; do sh -c "echo $installer" ; done
# find . -name "*init.sh" | while read installer ; do sh -c "echo $installer" ; done

