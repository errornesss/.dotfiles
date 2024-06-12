setxkbmap -variant workman
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
# xset r rate 660 25 # default
xset r rate 250 40 

redshift &
sxhkd &

picom &
nitrogen --restore &

slstatus &
exec dwm
