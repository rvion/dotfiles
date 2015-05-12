#!/bin/bash

set -e

. ~/.dotfiles/install/safely_symlink_file.function

setup_symlinks () {
  local overwrite_all=false backup_all=false skip_all=false
  safely_symlink_file ~/.dotfiles/.zshrc     ~/.zshrc
  info 'installing dotfiles'

  for src in $(find ~/.dotfiles -maxdepth 2 -name '*.symlink')
  do
    dst="$HOME/$(basename "${src%.*}")"
    safely_symlink_file "$src" "$dst"
  done

}

setup_symlinks
# find . -name "*init.sh" | while read installer ; do sh -c "echo $installer" ; done

