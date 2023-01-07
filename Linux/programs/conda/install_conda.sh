#!/bin/bash

echo " --> INSTALL conda"

# usage:
#    $ ./install_miniconda.sh ~/apps/miniconda
#

LOCAL_PATH=$(dirname "$0")
source $LOCAL_PATH/conda_path.sh

function _install_miniconda() {
    wget -q https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ${INSTALLER_PATH}
    echo " --> Finish download"
    chmod +x ${INSTALLER_PATH}
    ${INSTALLER_PATH} -b -p ${INSTALL_PREFIX}
    rm ${INSTALLER_PATH}
    ${INSTALL_PREFIX}/bin/conda upgrade -y --all
    ${INSTALL_PREFIX}/bin/conda clean -ya
    ${INSTALL_PREFIX}/bin/conda install -y conda-build conda-verify
    ${INSTALL_PREFIX}/bin/conda init --bash
}

echo " --> Do miniconda install"

_install_miniconda
