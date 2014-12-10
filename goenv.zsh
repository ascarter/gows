if [[ ! -o interactive ]]
then
	return
fi

compctl -K _goenv_complete_zsh goenv

_goenv_complete_zsh() {
	local words completions
	read -cA words
	
	if [ "${#words}" -eq 2 ]
	then
		completions="$(goenv --commands)"
	else
		completions="$(goenv --complete "${words[2,-2]}")"
	fi
# 	word="$1"
# 	completions="$(goenv --complete "${word}")"
# 	echo "$completions"
	reply=("${(ps:\n:)completions}")
}
