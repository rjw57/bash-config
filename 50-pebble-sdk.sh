for pebble_dir in "$HOME/sdk/"PebbleSDK-*; do
  if [ -d "$pebble_dir/bin" ]; then
    export PATH="$pebble_dir/bin:$PATH"
  fi
done
