#!/bin/bash

# usage:
#    $ ./install_miniconda.sh ~/apps/miniconda
#

source ./programs/conda/conda_path.sh

function _install_miniconda() {
    wget -q https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ${CONDA_INSTALLER_PATH}
    echo " --> Finish download"
    chmod +x ${CONDA_INSTALLER_PATH}
    ${CONDA_INSTALLER_PATH} -b -p ${CONDA_INSTALL_PREFIX}
    echo " --> Finish installing"
    ${CONDA_INSTALL_PREFIX}/bin/activate
    ${CONDA_INSTALL_PREFIX}/bin/conda upgrade -y --all
    ${CONDA_INSTALL_PREFIX}/bin/conda info
    ${CONDA_INSTALL_PREFIX}/bin/conda clean -ya
    echo " --> installing base tools"
    ${CONDA_INSTALL_PREFIX}/bin/conda install -y conda-build conda-verify make cmake gcc -c conda-forge
    rcho " --> init shells"
    ${CONDA_INSTALL_PREFIX}/bin/conda init bash
    ${CONDA_INSTALL_PREFIX}/bin/conda init zsh
    rm ${CONDA_INSTALLER_PATH}
}

echo " --> Do miniconda install"

_install_miniconda


