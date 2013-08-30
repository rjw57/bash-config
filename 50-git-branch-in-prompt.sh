# Add '(branch)' *before* prompt
function _git_branch_prompt()
{
	_rev_name=`git name-rev --name-only HEAD 2>/dev/null`
	if [ $? -eq 0 ]; then
		_add_prompt_note "$_rev_name"
	fi
	unset _rev_name
}

add_prompt_function _git_branch_prompt
