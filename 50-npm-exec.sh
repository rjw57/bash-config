# Create npm-exec alias which runs a command including the output of "npm bin"
# in the PATH
alias npm-exec=PATH="$(npm bin):$PATH" "$@"
