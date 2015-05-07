export ZSH=$HOME/.dotfiles/topics/oh-my-zsh/oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(git)
export LANG=en_US.UTF-8

export PATH=$HOME/bin:/usr/local/bin:$PATH
source $ZSH/oh-my-zsh.sh

# load aliases
echo "set-up aliases:"
for file in ~/.dotfiles/topics/*/*.aliases; do
    source "$file"
    echo "  - "$(basename $file)
done

# load aliases
echo "sourcing functions:"
for file in ~/.dotfiles/topics/*/*.functions; do
    source "$file"
    echo "  - "$(basename $file)
done

alias ll="ls -lA"
alias conf="vim ~/.zshrc"
alias sconf="source ~/.zshrc"

