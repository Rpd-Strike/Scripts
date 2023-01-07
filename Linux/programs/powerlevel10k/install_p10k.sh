#!/bin/bash

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/apps/powerlevel10k

echo -e '\n\n# Powerlevel10k \nsource ~/apps/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
