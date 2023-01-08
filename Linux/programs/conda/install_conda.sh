#!/bin/bash

# usage:
#    $ ./install_miniconda.sh ~/apps/miniconda
#

source ./programs/conda/conda_path.sh

function _install_miniconda() {
    wget -q https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ${CONDA_INSTALLER_PATH}
    echo " --> Finish download"
    chmod +x ${CONDA_INSTALLER_PATH}
    bash ${CONDA_INSTALLER_PATH} -b -p ${CONDA_INSTALL_PREFIX}
    echo " --> Finish installing"
    echo " --> init shells"
    ${CONDA_INSTALL_PREFIX}/bin/conda info
    ${CONDA_INSTALL_PREFIX}/bin/conda init bash
    ${CONDA_INSTALL_PREFIX}/bin/conda init zsh

    echo " --> try to activate conda in script"
    source ~/.bashrc
    source ./programs/conda/conda_activate.sh
    conda_activate_for_scripts

    conda info
    
    conda upgrade -y --all -c conda-forge
    conda clean -ya
    
    echo " --> installing base tools"
    conda install -y conda-build conda-verify make cmake gcc -c conda-forge
    rm ${CONDA_INSTALLER_PATH}
}

echo " --> Do miniconda install"

_install_miniconda


