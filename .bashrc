export EDITOR=nvim
export COPYER=xclip

# colours
# https://man.archlinux.org/man/terminfo.5
NUL="\[$(tput sgr0)\]"
RED="\[$(tput setaf 1)\]"
GRE="\[$(tput setaf 2)\]"
YEL="\[$(tput setaf 3)\]"
BLU="\[$(tput setaf 4)\]"
MAG="\[$(tput setaf 5)\]"
CYA="\[$(tput setaf 6)\]"

PS1="${CYA}\w ${YEL}>${NUL} "

export MANPAGER="nvim +Man!"

alias ls="ls --group-directories-first --color=auto -a"
alias tree="tree -aC --dirsfirst"

alias v="nvim"
eval "$(thefuck --alias)"
alias fk="fuck"

alias restart="~/scripts/restart"

alias school=". ~/scripts/e_school"
alias create=". ~/scripts/e_create"

