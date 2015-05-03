set -e

. ~/.dotfiles/function.safely_symlink_file.sh # --source-only 

setup_symlinks () {
    local overwrite_all=false backup_all=false skip_all=false
    safely_symlink_file ~/.dotfiles/.gitconfig ~/.gitconfig
    safely_symlink_file ~/.dotfiles/.zshrc     ~/.zshrc
}

setup_symlinks
