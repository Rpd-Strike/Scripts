#!/bin/bash

echo " --> INSTALL neovim"

I_NVIM=$PWD

# mkdir $HOME/apps
mkdir -p $HOME/apps/neovim

cd $HOME/apps/neovim

curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
chmod u+x nvim.appimage

cd $I_NVIM

echo 'alias nvim="$HOME/apps/neovim/nvim.appimage"' >> ~/.zshrc
