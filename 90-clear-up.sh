# Run any 'clearup' functions which have been registered
if [ ! -z "$CLEARUP" ]; then
	for c in $CLEARUP; do
		$c
	done
	unset c
fi
