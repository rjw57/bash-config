# Run any 'clearup' functions which have been registered
if [ ! -z "$CLEARUP" ]; then
	for _c in $CLEARUP; do
		$_c
	done
	unset _c
fi
