#!/bin/bash

# ---- installing

# 1. First, install conda
echo " -->> installing conda (press enter...)" && read
source ./programs/conda/install_conda.sh

# 2. Install & configure zsh 

echo " -->> installing zsh (press enter...)" && read
# Conda way
source ./programs/zsh/install_zsh_conda.sh
# Native way
# source ./programs/zsh/install_zsh_dist.sh

# 3. Rust
echo " -->> installing rust (press enter...)" && read
source ./programs/rust/install_rust.sh

# 4. lsd
echo " -->> installing lsd (press enter...)" && read
source ./programs/lsd/install_lsd.sh

# 5. neovim
echo " -->> installing neovim (press enter...)" && read
source ./programs/neovim/install_neovim.sh

# 6. powerlevel10k theme
echo " -->> installing p10k theme (press enter...)" && read
source ./programs/powerlevel10k/install_p10k.sh

# 7. autocomplete
echo " -->> installing zsh autocomplete (press enter...)" && read
source ./programs/zsh_extras/autocomplete.sh


# ------ post-configuration

# 0. git stuff
echo " -->> configuring git shortcuts (press enter...)" && read
source ./general_config/config_git.sh

# 1. input commands for navigation
echo " -->> configuring input commands & navigation (press enter...)" && read
source ./general_config/config_input.sh

# 2. lsd
echo " -->> configuring lsd (press enter...)" && read
source ./general_config/config_lsd.sh

# 3. p10k
echo " -->> configuring p10k theme (you may need a cooler font) (press enter...)" && read
source ./general_config/config_p10k.sh

# 4. bash to zsh
echo " -->> configuring bash to start zsh (press enter ...)" && read
source ./general_config/final_config_bash.sh
