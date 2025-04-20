#!/bin/bash

# install zsh

echo "install oh-my-zsh framework"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "install powerlevel10k framework"

## install powerlevel10k theme for oh-my-zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/mafredri/zsh-async.git ${ZSH_CUSTOM}/plugins/zsh-async

echo "change default shell to zsh"

chsh -s /bin/zsh
