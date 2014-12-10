_goenv_complete_bash() {
	COMPREPLY=()
	local word="${COMP_WORDS[COMP_CWORD]}"
	local completions="$(goenv --complete "$word")"
	COMPREPLY=( $(compgen -W "$completions" -- "$word") )
}

complete -F _goenv_complete_bash goenv
