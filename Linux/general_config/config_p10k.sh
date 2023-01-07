#!/bin/bash

source ./programs/conda/conda_path.sh

$CONDA_PATH/bin/activate base

echo " -->> Now p10k configuration will start. After finishing, please exit."

p10k configure
