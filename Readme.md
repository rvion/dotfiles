# Dotfiles
Personnal configurations files + setup scripts

## setup

```shell
git clone https://github.com/rvion/dotfiles --recursive ~/.dotfiles
cd ~/.dotfiles

./setup_machine.sh
./restore_config.sh
```

## Topics

All subfolders represent configuration plugin.

They can contains files with specific naming:

  - example.alias -> contains shell aliases that will be sourced
  - example.init -> script to setup dependencies
  - example.git -> a list of urls that will be cloned in a _git gitignored subfoler 
  - example.bin -> a execiutable that will be available in path
  - example.functions -> a function that will be available in shell


