#!/bin/bash

source $(dirname "$0")/conda_path.sh

$CONDA_PATH/bin/conda install zsh -y -c conda-forge
