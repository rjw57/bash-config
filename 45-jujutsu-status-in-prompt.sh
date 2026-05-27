# Function to detect if we're in a jujutsu repo. Returns 0 if we *are*. Returns 1 if jujutsu is not
# on the PATH. Returns 2 if we're not in a repo.
function _in_jujistu_repo() {
  if [ -z "$(which jj 2>/dev/null)" ]; then
    return 1
  fi
  if [ -z "$(jj root --ignore-working-copy --no-integrate-operation 2>/dev/null)" ]; then
    return 2
  fi
  return 0
}

function _jujutsu_status_in_prompt() {
  if ! _in_jujistu_repo; then
    return 1
  fi
  _add_prompt_header "╭───"$'\n'"$(jj status --no-integrate-operation --color=always | sed -e "s/^/│ /")"
}

add_prompt_function _jujutsu_status_in_prompt
