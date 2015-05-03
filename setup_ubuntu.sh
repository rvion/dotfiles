set -e # Abort after first error
set -x # Log each command

apt-get update -qq
apt-get install vim tmux git zsh
chsh -s $(which zsh)
