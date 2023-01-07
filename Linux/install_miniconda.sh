#!/bin/sh

# usage:
#    $ ./install_miniconda.sh ~/apps/miniconda
#
# the absolute path of the miniconda installer (e.g Miniconda3-latest-Linux-x86_64.sh
INSTALLER_PATH=/tmp/Miniconda3-latest-Linux-x86_64.sh

# the installation root directory of miniconda (e.g /opt/conda)
INSTALL_PREFIX=$HOME/apps/miniconda3

function _install_miniconda() {
    wget -q https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ${INSTALLER_PATH}
    chmod +x ${INSTALLER_PATH}
    ${INSTALLER_PATH} -b -p ${INSTALL_PREFIX}
    rm ${INSTALLER_PATH}
    ${INSTALL_PREFIX}/bin/conda upgrade -y --all
    ${INSTALL_PREFIX}/bin/conda clean -ya
    ${INSTALL_PREFIX}/bin/conda install -y conda-build conda-verify
}

_install_miniconda