function branch() {
  ref=$(git symbolic-ref HEAD)
  echo "${ref#refs/heads/}"
}

# Status
alias gs="git status -s"
alias gd="git diff"
alias gdh="git diff HEAD"

#Checkout
alias gc="git checkout"

# Push
alias gp="git push github \$(branch)"
alias gpf="git push -f github master \$(branch)"

# Commit
alias gca="git commit -am"
alias gc="git commit -m"
