#!/bin/bash

# install packages
echo "install required packages"
sudo pacman -S stow nodejs npm zsh

#TODO: https://wiki.hyprland.org/Useful-Utilities/Must-have/
echo "install hyprland"
sudo pacman -S xdg-desktop-portal-hyprland wofi hyprland hyprpaper grim slurp qt5-wayland qt6-wayland

yay -S hyprpanel

echo "install apps "
sudo pacman -S kitty bitwarden

echo "install language servers packages"
sudo pacman -S shellcheck bash-language-server clangd lua-language-server

yay -S basedpyright

pip install pylint

# make links to repo
echo "link dotfiles to home directory"

stow -R -v -t ~ .

# install zsh

echo "install oh-my-zsh framework"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## install powerlevel10k theme for oh-my-zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/mafredri/zsh-async.git ${ZSH_CUSTOM}/plugins/zsh-async

echo "change default shell to zsh"

chsh -s /bin/zsh

git submodule update --init --recursive
