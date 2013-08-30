# Set npm configuration to use $LOCAL for global installation

if [ ! -z "`which npm`" -a ! -z "$LOCAL" ]; then
	export npm_config_prefix=$LOCAL/
fi
