#!/bin/zsh

# Install packer

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Install nodejs (for coc and gitsigns)
sudo apt-get install nodejs npm

nvim -c 'PackerInstall'
