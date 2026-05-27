# Function to detect if we're in a jujitsu repo. Returns 0 if we *are*. Returns 1 if jujitsu is not
# on the PATH. Returns 2 if we're not in a repo.
function _in_jujistu_repo() {
  if [ -z "$(which jj 2>/dev/null)" ]; then
    return 1
  fi
  if [ -z "$(jj root --ignore-working-copy 2>/dev/null)" ]; then
    return 2
  fi
  return 0
}
