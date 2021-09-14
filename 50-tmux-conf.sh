if [ ! -f "$HOME/.tmux.conf" ]; then
  cat >"$HOME/.tmux.conf" <<EOI
set -g default-terminal "tmux-256color"
set -ga terminal-overrides ",xterm-256color*:Tc"
EOI
fi
