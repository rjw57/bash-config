# Setup variables for setting colours, etc in the terminal

# We require the tput command to access the terminfo database. This function
# wraps tput and returns nothing if it doesn't exist. It also silently swallows
# errors from tput about unknown terminals, etc. The idea behind this is that
# any of the variables defined in this file could be the empty string and our
# bash config will work just as well.
function tp() {
	if [ ! -z `which tput` ]; then
		tput $* 2>/dev/null
	fi
}

COLOR_RESET=`tp op`
COLOR_FG_0=`tp setf 0`
COLOR_FG_1=`tp setf 1`
COLOR_FG_2=`tp setf 2`
COLOR_FG_3=`tp setf 3`
COLOR_FG_4=`tp setf 4`
COLOR_FG_5=`tp setf 5`
COLOR_FG_6=`tp setf 6`
COLOR_FG_7=`tp setf 7`
COLOR_BG_0=`tp setb 0`
COLOR_BG_1=`tp setb 1`
COLOR_BG_2=`tp setb 2`
COLOR_BG_3=`tp setb 3`
COLOR_BG_4=`tp setb 4`
COLOR_BG_5=`tp setb 5`
COLOR_BG_6=`tp setb 6`
COLOR_BG_7=`tp setb 7`

function clear_terminfo()
{
	unset clear_terminfo
	unset tp

	unset COLOR_RESET
	unset COLOR_FG_0 COLOR_FG_1 COLOR_FG_2 COLOR_FG_3
	unset COLOR_FG_4 COLOR_FG_5 COLOR_FG_6 COLOR_FG_7
	unset COLOR_BG_0 COLOR_BG_1 COLOR_BG_2 COLOR_BG_3
	unset COLOR_BG_4 COLOR_BG_5 COLOR_BG_6 COLOR_BG_7
}

add_clearup_function clear_terminfo
