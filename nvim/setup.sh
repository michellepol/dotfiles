#!/bin/bash

# Install packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Install nodejs (for coc and gitsigns)
# Only for Manjaro or Arch
sudo pacman -S nodejs npm nvim

nvim -c 'PackerInstall'
