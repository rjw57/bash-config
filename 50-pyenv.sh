export PYENV_ROOT="${HOME}/.pyenv"
if [ -d "${PYENV_ROOT}" ]; then
  eval "$("${PYENV_ROOT}"/bin/pyenv init -)"
  export PATH="${PYENV_ROOT}/bin:${PATH}"
else
  unset PYENV_ROOT
fi
