#!/bin/bash

# prerequisites: cargo / rust

source ./programs/conda/conda_path.sh
source $CONDA_PATH/etc/profile.d/conda.sh

$CONDA_PATH/bin/activate base

$CONDA_PATH/bin/conda info

echo " --> debug:::::"
cc --version

source $HOME/.cargo/env
cargo install lsd
