export RBENV_ROOT="${HOME}/.rbenv"
if [ -d "${RBENV_ROOT}" ]; then
  eval "$("${RBENV_ROOT}"/bin/rbenv init -)"
  export PATH="${RBENV_ROOT}/bin:${RBENV_ROOT}/plugins/ruby-build/bin:${PATH}"
else
  unset RBENV_ROOT
fi
