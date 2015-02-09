# If ~/sdk/go exists, use it as the GOROOT
if [ -d "$HOME/sdk/go" ]; then
	export GOROOT=$HOME/sdk/go
	if [ -d $GOROOT/bin ]; then
		export PATH=$GOROOT/bin:$PATH
	fi
fi

# If ~/projects/gocode exists, use it as the GOPATH
if [ -d "$HOME/projects/gocode" ]; then
	export GOPATH=$HOME/projects/gocode
	if [ -d $GOPATH/bin ]; then
		export PATH=$GOPATH/bin:$PATH
	fi
fi
