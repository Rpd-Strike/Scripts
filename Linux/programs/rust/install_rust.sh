#!/bin/sh

# source ~/.bashrc # should activate base environment for gcc tools

curl https://sh.rustup.rs -sSf | sh

echo -e '

## Cargo / rustc 
source $HOME/.cargo/env
export PATH="$HOME/.rust/bin:$PATH"' >> ~/.zshrc
