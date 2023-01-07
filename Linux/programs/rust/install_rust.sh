#!/bin/sh

echo " --> INSTALL rust"

curl https://sh.rustup.rs -sSf | sh

echo -e '\n\n# Cargo / rustc \nexport PATH="$HOME/.rust/bin:$PATH"' >> ~/.zshrc
