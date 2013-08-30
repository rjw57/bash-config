# If ~/.local/gocode exists, use it as the GOPATH
if [ ! -z "$LOCAL" -a -d $LOCAL/gocode ]; then
	export GOPATH=$LOCAL/gocode
	if [ -d $GOPATH/bin ]; then
		export PATH=$GOPATH/bin:$PATH
	fi
fi
