#!/bin/bash

mkdir -p $HOME/apps/ohmyzsh

echo "ZSH variable: $ZSH"

cd $HOME/apps/ohmyzsh && ZSH=$HOME/.oh-my-zsh sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cat $HOME/.zshrc.pre-oh-my-zsh >> ~/.zshrc

cd $OLDPWD


