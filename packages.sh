#!/bin/bash

# install packages
echo "install required packages"
sudo pacman -S --needed stow nodejs npm zsh

#TODO: https://wiki.hyprland.org/Useful-Utilities/Must-have/
echo "install hyprland"
sudo pacman -S --needed  xdg-desktop-portal-hyprland wofi hyprland hyprpaper grim slurp qt5-wayland qt6-wayland

yay -S --needed hyprpanel basedpyright

echo "install apps "
sudo pacman -S --needed kitty bitwarden

echo "install language servers packages"
sudo pacman -S --needed shellcheck bash-language-server clangd lua-language-server python-pylint
