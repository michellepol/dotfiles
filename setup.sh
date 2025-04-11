#!/bin/bash

# install packages
echo "install required packages"
sudo pacman -S kitty bitwarden waybar hyprland hyprpaper wofi stow nodejs npm zsh

# make links to repo
echo "link dotfiles to home directory"

stow -R -v -t ~ .

# neovim

# Install packer

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# install zsh

echo "install oh-my-zsh framework"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## install powerlevel10k theme for oh-my-zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/mafredri/zsh-async.git ${ZSH_CUSTOM}/plugins/zsh-async

echo "change default shell to zsh"

chsh -s /bin/zsh

echo "Launch neovim with option PackerInstall for installing neovim plugins: nvim -c 'PackerInstall'"

git submodule update --init --recursive
