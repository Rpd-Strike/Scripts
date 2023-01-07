#!/bin/bash

# prerequisites: cargo / rust

source ./programs/conda/conda_path.sh
source $CONDA_PATH/etc/profile.d/conda.sh

conda activate base

source $HOME/.cargo/env
cargo install lsd
