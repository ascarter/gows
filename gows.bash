#  -*- mode: unix-shell-script; -*-

_gows_complete_bash() {
	COMPREPLY=()
	local word="${COMP_WORDS[COMP_CWORD]}"
	
	if [ "$COMP_CWORD" -eq 1 ]
	then
		local completions=$(gows --commands)
	else
		local words=("${COMP_WORDS[@]}")
		unset words[0]
		unset words[$COMP_CWORD]
		local completions=$(gows --complete "${words[@]}")
	fi
	
	COMPREPLY=( $(compgen -W "$completions" -- "$word") )
}

complete -F _gows_complete_bash gows
