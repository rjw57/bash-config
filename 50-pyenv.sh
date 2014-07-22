export PYENV_ROOT="${HOME}/.pyenv"
if [ -d "${PYENV_ROOT}" ]; then
  eval "$("${PYENV_ROOT}"/bin/pyenv init -)"
  export PATH="${PYENV_ROOT}/bin:${PATH}"

  if [ -d "${PYENV_ROOT}/plugins/pyenv-virtualenv" ]; then
      eval "$(pyenv virtualenv-init -)"
  fi
else
  unset PYENV_ROOT
fi
