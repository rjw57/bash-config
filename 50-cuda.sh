if [ -d "/usr/local/cuda-7.0" ]; then
  _cuda_dir="/usr/local/cuda-7.0"
  export PATH="${_cuda_dir}/bin:${PATH}"
  export LD_LIBRARY_PATH="${_cuda_dir}/lib64:$LD_LIBRARY_PATH"
fi
