# If ~/.gitexec exists, add it to the exec path
if [ -d "$HOME/.gitexec" -a -z "${GIT_EXEC_PATH}" ]; then
  export GIT_EXEC_PATH="$( GIT_EXEC_PATH= git --exec-path ):$HOME/.gitexec"
fi

