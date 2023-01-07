#!/bin/bash

LOCAL_PATH=$(dirname "$0")

source $LOCAL_PATH/conda_path.sh

echo "condapath: $CONDA_PATH"


$CONDA_PATH/bin/activate base

conda env list

$CONDA_PATH/bin/conda install cmake make gcc -y -c conda-forge
