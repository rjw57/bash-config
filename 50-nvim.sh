# Alias vim to nvim if it is present.
if [ ! -z "$(which nvim 2>/dev/null)" ]; then
  alias vim=nvim
fi
