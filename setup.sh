#!/bin/bash

# install zsh

echo "install dependencies & change default shell to zsh"

sudo pacman -S zsh stow nodejs npm

# change shell to zsh

chsh -s /bin/zsh

echo "install oh-my-zsh framework"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install powerlevel10k theme for oh-my-zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/mafredri/zsh-async.git ${ZSH_CUSTOM}/plugins/zsh-async

echo "link config to ~/"

stow -R -v -t ~ .

# neovim

# Install packer

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Install nodejs (for coc and gitsigns)
sudo pacman -S 

nvim -c 'PackerInstall'
