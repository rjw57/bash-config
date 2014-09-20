# Look for the COLORTERM environment variable used by modern
# terminal emulators. If set, set the TERM variable appropriately.
case "$TERM" in
  screen*)
    _colortermtype=screen
    ;;
  rxvt*)
    _colortermtype=rxvt
    ;;
  xterm*)
    COLORTERM=xterm-256color
    _colortermtype=xterm
    ;;
  *)
    _colortermtype=xterm
    ;;
esac

if [ ! -z "$COLORTERM" ]; then
  TERM="${_colortermtype}-256color"
fi

unset _colortermtype
