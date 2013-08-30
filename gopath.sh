# If ~/.local/gocode exists, use it as the GOPATH
if [ -d ~/.local/gocode ]; then
	export GOPATH=~/.local/gocode
	export PATH=$GOPATH/bin:$PATH
fi
