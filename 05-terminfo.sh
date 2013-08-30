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
COLOR_FG_0=`tp setaf 0`
COLOR_FG_1=`tp setaf 1`
COLOR_FG_2=`tp setaf 2`
COLOR_FG_3=`tp setaf 3`
COLOR_FG_4=`tp setaf 4`
COLOR_FG_5=`tp setaf 5`
COLOR_FG_6=`tp setaf 6`
COLOR_FG_7=`tp setaf 7`
COLOR_BG_0=`tp setab 0`
COLOR_BG_1=`tp setab 1`
COLOR_BG_2=`tp setab 2`
COLOR_BG_3=`tp setab 3`
COLOR_BG_4=`tp setab 4`
COLOR_BG_5=`tp setab 5`
COLOR_BG_6=`tp setab 6`
COLOR_BG_7=`tp setab 7`

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
