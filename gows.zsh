#  -*- mode: unix-shell-script; -*-

if [[ ! -o interactive ]]
then
	return
fi

compctl -K _gows_complete_zsh gows

_gows_complete_zsh() {
	local words completions
	read -cA words
	
	if [ "${#words}" -eq 2 ]
	then
		completions="$(gows --commands)"
	else
		completions="$(gows --complete "${words[2,-2]}")"
	fi
	reply=("${(ps:\n:)completions}")
}
