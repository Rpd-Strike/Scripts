#!/bin/bash

echo " --> CONFIG conda"

TOOLS="cmake make gcc"

source ./programs/conda/conda_path.sh

echo " --> condapath: $CONDA_PATH"

$CONDA_PATH/bin/activate base

conda env list

echo " --> Installing conda tools: $TOOLS"

$CONDA_PATH/bin/conda install $TOOLS -y -c conda-forge
