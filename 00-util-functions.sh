# Various utility functions and variables

# Add $1 to the list of clearup functions to be called
function add_clearup_function()
{
	CLEARUP="$CLEARUP $1"
}

# Remove any variables/functions we've defined here on clearup
function clearup_utils()
{
	unset clearup_utils
	unset add_clearup_function
}

add_clearup_function clearup_utils
