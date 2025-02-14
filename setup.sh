#!/bin/bash

# install packages
echo "install packages"
sudo pacman -S kitty bitwarden waybar hyprland hyprpaper wofi

# install zsh

echo "install dependencies & change default shell to zsh"

sudo pacman -S zsh stow nodejs npm

## change shell to zsh

chsh -s /bin/zsh

echo "install oh-my-zsh framework"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## install powerlevel10k theme for oh-my-zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# make links to repo
echo "link config to ~/"

stow -R -v -t ~ .

# fonts
echo "install fonts"

# neovim

# Install packer

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Install nodejs (for coc and gitsigns)
sudo pacman -S nodejs npm

nvim -c 'PackerInstall'
