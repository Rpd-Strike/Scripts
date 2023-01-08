#!/bin/bash

mkdir -p $HOME/apps/ohmyzsh

echo "ZSH variable: $ZSH"

cd $HOME/apps/ohmyzsh && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cd $OLDPWD


