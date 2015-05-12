export ZSH=$HOME/.dotfiles/oh-my-zsh/oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=()
export LANG=en_US.UTF-8

export PATH=$HOME/bin:/usr/local/bin:$PATH
source $ZSH/oh-my-zsh.sh

# load aliases
echo "set-up aliases:"
for file in ~/.dotfiles/*/*.aliases; do
    source "$file"
    echo "  - "$(basename $file)
done

# load aliases
echo "sourcing functions:"
for file in ~/.dotfiles/*/*.functions; do
    source "$file"
    echo "  - "$(basename $file)
done

alias ll="ls -lA"
alias conf="vim ~/.zshrc"
alias sconf="source ~/.zshrc"
# export LANG="en_US.UTF-8"
# export LANGUAGE="en_US.UTF-8"
