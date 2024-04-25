setxkbmap -variant workman
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

redshift &

picom &
nitrogen --restore &

slstatus &
exec dwm
