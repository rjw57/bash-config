# If ~/projects/gocode exists, use it as the GOPATH
if [ -d "$HOME/projects/gocode" ]; then
	export GOPATH=$HOME/projects/gocode
	if [ -d $GOPATH/bin ]; then
		export PATH=$GOPATH/bin:$PATH
	fi
fi
