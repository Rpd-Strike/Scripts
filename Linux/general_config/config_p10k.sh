#!/bin/bash

# prerequisites: conda & zsh & install p10k

source ./programs/conda/conda_path.sh

source $CONDA_PATH/etc/profile.d/conda.sh

conda activate base

zsh -c "p10k configure"

