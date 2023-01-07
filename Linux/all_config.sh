#!/bin/bash

# ---- installing

# 1. First, install conda

source ./programs/conda/install_conda.sh

# 2. Install & configure zsh 

# Conda way
source ./programs/zsh/install_zsh_conda.sh
# Native way
# source ./programs/zsh/install_zsh_dist.sh

# 3. Rust
source ./programs/rust/install_rust.sh

# 4. lsd
source ./programs/lsd/install_lsd.sh

# 5. neovim
source ./programs/neovim/install_neovim.sh


# ------ post-configuration

# 1. conda
source ./programs/conda/config_conda.sh

# 2. lsd
source ./programs/lsd/config_lsd.sh

# 3. zsh
source ~/.zshrc
zsh
