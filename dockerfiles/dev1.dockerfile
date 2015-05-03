FROM ubuntu
RUN apt-get update -qq
RUN apt-get install vim tmux git curl docker.io zsh -yq
RUN curl -L https://github.com/docker/compose/releases/download/1.2.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose
RUN git clone https://github.com/rvion/config-files ~/.dotfiles
RUN cd ~/.dotfiles && ./install.sh
RUN chsh -s $(which zsh)
CMD zsh
