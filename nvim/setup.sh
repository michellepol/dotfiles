#!/bin/bash

# Install packer

# Install nodejs (for coc and gitsigns)
sudo apt install nodejs npm

nvim -c 'PackerInstall'
