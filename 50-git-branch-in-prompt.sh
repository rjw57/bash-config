# Add '(branch)' *before* prompt
function _git_branch_prompt()
{
  if [ -z "$(which git 2>/dev/null)" ]; then
    return 1
  fi
  if _in_jujistu_repo; then
    return 1
  fi
  _rev_name=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
	if [ $? -eq 0 ]; then
		_add_prompt_note "$_rev_name"
	fi
	unset _rev_name
}

add_prompt_function _git_branch_prompt
