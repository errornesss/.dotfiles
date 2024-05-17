#
# ~/.bashrc
#

# colours
# https://man.archlinux.org/man/terminfo.5
NULL="\[$(tput sgr0)\]"
RED="\[$(tput setaf 1)\]"
GRE="\[$(tput setaf 2)\]"
YEL="\[$(tput setaf 3)\]"
BLU="\[$(tput setaf 4)\]"
MAG="\[$(tput setaf 5)\]"
CYA="\[$(tput setaf 6)\]"

# custom prompt
# PS1="[\u@\h \W]\$ " # deault
# PS1="${CYA}\w ${RED}>${NULL} "
PS1="\n${MAG}[\u@\h] ${CYA}\w \n${RED}>${NULL} "

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls="ls -a --color=auto --group-directories-first"
alias la="ls -lah"

# alias
alias v="nvim"
alias cpufreq="auto-cpufreq"
alias neofetch="fastfetch"
alias brave="brave --incognito & disown"

# scripts
# alias ()="~/scripts/()"
alias bri="~/scripts/brillos"
alias redshiftr="~/scripts/redshiftr"
alias vol="~/scripts/vol"

alias mkdircd=". ~/scripts/mkdircd"
alias .f=". ~/scripts/df"
alias create=". ~/scripts/p_create"
alias school=". ~/scripts/p_school"
alias e=". ~/scripts/p_e"
