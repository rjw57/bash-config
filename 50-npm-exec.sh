# Create npm-exec function which runs a command including the output of "npm
# bin" in the PATH
function npm-exec() {
  PATH="$(npm bin):$PATH" "$@"
}
