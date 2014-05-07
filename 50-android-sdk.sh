# Search for the first directory which contains ~/sdk/android*/{...}/adb
# and ~/sdk/android*/{...}/android and add them to the system path.
if [ -d "$HOME/sdk" ]; then
  # platform-tools
  _android_dirs=(`find "$HOME"/sdk/android*/ -name adb -type f`)
  if [ ! -z "${_android_dirs[0]}" ]; then
    export PATH="`dirname \"${_android_dirs[0]}\"`":$PATH
  fi

  # tools
  _android_dirs=(`find "$HOME"/sdk/android*/ -name android -type f`)
  if [ ! -z "${_android_dirs[0]}" ]; then
    export PATH="`dirname \"${_android_dirs[0]}\"`":$PATH
  fi
fi
