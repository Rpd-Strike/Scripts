#!/bin/bash

TOOLS="cmake make gcc"

source ./programs/conda/conda_path.sh
source $CONDA_PATH/etc/profile.d/conda.sh

echo " --> condapath: $CONDA_PATH"

$CONDA_PATH/bin/activate base

$CONDA_PATH/bin/conda env list

echo " --> Installing conda tools: $TOOLS"

$CONDA_PATH/bin/conda install $TOOLS -y -c conda-forge
