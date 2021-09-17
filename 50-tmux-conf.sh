if [ ! -f "$HOME/.tmux.conf" ]; then
  cat >"$HOME/.tmux.conf" <<EOI
set -g default-terminal "tmux-256color"
set -ga terminal-overrides ",xterm-256color*:Tc"
bind-key -n Home send Escape "OH"
bind-key -n End send Escape "OF"
set -s escape-time 25
EOI
fi
