#!/bin/bash

# mkdir $HOME/apps
mkdir -p $HOME/apps/neovim

cd $HOME/apps/neovim

curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
chmod u+x nvim.appimage

cd $OLDPWD

echo '

### neovim alias
alias nvim="$HOME/apps/neovim/nvim.appimage"' >> ~/.zshrc
