#!/bin/bash

mkdir -p $HOME/apps/ohmyzsh

echo "ZSH variable: $ZSH"

# Prepping in case of previous oh my zsh installs
FILE=$HOME/.zshrc.pre-oh-my-zsh
if test -f "$FILE"; then
    echo "$FILE exists... renaming"
    mv $FILE $FILE.old
fi

FOLDER=$HOME/.oh-my-zsh
if [ -d "$FOLDER" ]; then
    echo "$FOLDER exists... deleting"
    rm -rf $FOLDER
fi

# Do install
ZSH=$HOME/.oh-my-zsh sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cat $HOME/.zshrc.pre-oh-my-zsh >> ~/.zshrc

