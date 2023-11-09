#!/bin/bash

source packages.sh
source zsh.sh

# make links to repo
echo "link dotfiles to home directory"

stow -R -v -t ~ .

cp .zshrc ~/.zshrc

git submodule update --init --recursive
