if [ -d "$HOME/.gem/ruby/" ]; then
  _gem_dirs=`find "$HOME/.gem/ruby" -maxdepth 2 -name bin -type d`
  _gem_dir_array=($_gem_dirs)
  if [ ! -z "${_gem_dir_array[0]}" ]; then
    export PATH="${_gem_dir_array[0]}":$PATH
  fi
fi
