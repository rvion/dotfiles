function branch() {
  ref=$(git symbolic-ref HEAD)
  echo "${ref#refs/heads/}"
}

alias gc="git checkout"
alias gp="git push github \$(branch)"
alias gpf="git push -f github master \$(branch)"
