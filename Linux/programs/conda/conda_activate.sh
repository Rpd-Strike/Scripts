conda_activate_for_scripts() {
  # Workaround for a conda bug: https://github.com/conda/conda/issues/7980
  eval "$(conda shell.`basename -- $SHELL` hook)"
  conda activate $1  # Will activate the base conda env if no arguments are passed.
  echo "Active conda env for process $$ is now: ${CONDA_DEFAULT_ENV} at ${CONDA_PREFIX}"
}

export -f conda_activate_for_scripts
