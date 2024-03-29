#
# ~/.bashrc
#

# colours
# https://man.archlinux.org/man/terminfo.5
NULL='\[$(tput sgr0)\]'
RED="\[$(tput setaf 1)\]"
BLUE="\[$(tput setaf 4)\]"
CYAN="\[$(tput setaf 6)\]"

# custom prompt
# PS1='[\u@\h \W]\$ '
PS1="${CYAN}\w ${RED}>${NULL} "

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -la'

# alias
alias v='nvim'

# scripts
alias mkdircd='. ~/scripts/mkdircd'
alias df='. ~/scripts/df'
