#!/bin/bash

# install zsh

echo "install zsh & change default shell"

sudo pacman -S zsh

# change shell to zsh

chsh -s /bin/zsh

echo "install oh-my-zsh framework"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install powerlevel10k theme for oh-my-zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# make symbolic links to repo
#
#TODO: Add links to ~/.zshrc and ~/.p10k
files=$(ls $PWD)

for file in $files;
do
    if [[ -d $file ]]; then
        target="$PWD/$file"
        linkname="$HOME/.config/$file"

        echo "make symlink $linkname -> $target"

        ln -s $target $linkname
    fi
done
