# If ~/.local exists, add things within it to local path
if [ -d ~/.local ]; then
	export PATH=~/.local/bin:$PATH
	export LD_LIBRARY_PATH=~/.local/lib:$LD_LIBRARY_PATH
fi
