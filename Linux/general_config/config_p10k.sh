#!/bin/bash

# prerequisites: conda & zsh & install p10k

conda activate base

zsh -c "source ~/.zshrc && p10k configure"

