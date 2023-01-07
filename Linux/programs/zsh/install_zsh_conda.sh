#!/bin/bash

I_ZSH=$PWD

cd $(dirname $0)
source ../conda/conda_path.sh

$CONDA_PATH/bin/conda install zsh -y -c conda-forge

cd $I_ZSH
