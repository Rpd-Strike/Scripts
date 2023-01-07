#!/bin/bash

# the absolute path of the miniconda installer (e.g Miniconda3-latest-Linux-x86_64.sh
CONDA_INSTALLER_PATH=/tmp/Miniconda3-latest-Linux-x86_64.sh

# the installation root directory of miniconda (e.g /opt/conda)
CONDA_INSTALL_PREFIX=$HOME/apps/miniconda3

# Path of conda after installation
CONDA_PATH=$($CONDA_INSTALL_PREFIX/bin/conda info | grep -i 'base environment' | awk '{print $4}')
