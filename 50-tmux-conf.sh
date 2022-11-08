if [ ! -f "$HOME/.tmux.conf" ]; then
  cat >"$HOME/.tmux.conf" <<EOI
set -ga terminal-overrides ",xterm-256color*:Tc"
bind-key -n Home send Escape "OH"
bind-key -n End send Escape "OF"
set -s escape-time 25
set-option -g focus-events
EOI
fi
