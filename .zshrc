export ZSH=$HOME/.dotfiles/vendors/oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(git)
export LANG=en_US.UTF-8

export PATH=$HOME/bin:/usr/local/bin:$PATH
source $ZSH/oh-my-zsh.sh

# load aliases
for file in ~/.dotfiles/aliases.*; do
    source "$file"
done
