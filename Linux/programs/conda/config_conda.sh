#!/bin/bash

TOOLS="cmake make gcc"

source ./programs/conda/conda_path.sh
source $CONDA_PATH/etc/profile.d/conda.sh

echo " --> condapath: $CONDA_PATH"

conda activate base

conda env list

echo " --> Installing conda tools: $TOOLS"

conda install $TOOLS -y -c conda-forge
