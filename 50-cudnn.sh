if [ -d "${HOME}/opt/cudnn-6.5-linux-x64-v2" ]; then
  _cudnn_dir="${HOME}/opt/cudnn-6.5-linux-x64-v2"
  export LD_LIBRARY_PATH="${_cudnn_dir}:$LD_LIBRARY_PATH"
fi
