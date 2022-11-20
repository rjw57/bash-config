# Source bash tab-completion configuration if it is available.
if [ -r /etc/bash_completion ]; then
	. /etc/bash_completion
fi

if [ ! -z "`which brew 2>/dev/null`" ]; then
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
  fi
fi
