#!/bin/bash

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/apps/powerlevel10k

echo -e '

### Powerlevel10k 
source ~/apps/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
