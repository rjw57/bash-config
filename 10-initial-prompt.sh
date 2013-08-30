# Setup prompt manipulation
#
# The idea behind this is that we always use PROMPT_COMMAND to build the
# command line prompt and we do it by chaining a set of manipulation functions.
# These functions can do anything in principle but it is intended that they
# just manipulate PS1.
#
# If all you want to do is add a '(...)' to the end of the prompt, call
# _add_prompt_note with the string to append (excluding brackets.)

# Use underscores because this will have to, unfortunately, stay defined.
function _generate_prompt()
{
	for _f in $_PROMPT_FUNCTIONS; do
		$_f
	done
	unset _f
}

# Add $1 to the list of prompt functions.
function add_prompt_function()
{
	_PROMPT_FUNCTIONS="$_PROMPT_FUNCTIONS $1"
}

function _add_prompt_note()
{
	_prompt_note="${_prompt_note:+$_prompt_note }$*"
}

# Initially there are no prompt functions
_PROMPT_FUNCTIONS=""

# Specify which function should be used to generate the prompt
PROMPT_COMMAND="_generate_prompt"

# We need to define this here because COLOR_{...} goes away after this file is
# sourced.
_starting_prompt="$COLOR_FG_6\\u$COLOR_RESET@$COLOR_FG_2\\h$COLOR_RESET:$COLOR_FG_3\\w$COLOR_RESET\${_prompt_note:+ ($COLOR_FG_1\${_prompt_note}$COLOR_RESET)}\n\\$ "

# Set the initial command-line prompt
function _init_prompt()
{
	_prompt_note=""
	PS1=$_starting_prompt
}
add_prompt_function _init_prompt

# Specify how we should clear up after ourselves
function clearup_initial_prompt()
{
	unset clearup_initial_prompt
	unset add_prompt_function
}

add_clearup_function clearup_initial_prompt
