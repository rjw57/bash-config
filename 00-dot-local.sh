# If ~/.local exists, add things within it to local path
if [ -d $HOME/.local ]; then
	LOCAL=$HOME/.local
	if [ -d $LOCAL/bin ]; then
		export PATH=$LOCAL/bin:$PATH
	fi
	if [ -d $LOCAL/lib ]; then
		export LD_LIBRARY_PATH=$LOCAL/lib:$LD_LIBRARY_PATH
	fi
fi
