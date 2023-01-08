#!/bin/bash

source ./programs/conda/conda_path.sh

$CONDA_PATH/bin/activate base
$CONDA_PATH/bin/conda install zsh -y -c conda-forge
