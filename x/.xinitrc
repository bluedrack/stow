~/.fehbg
compton &
xrdb .cache/wal/colors.Xresources
setxkbmap ch fr
statusbar
xset r rate 240 60
dunst &
sxhkd &
notify-send "$(fortune)" &
exec bspwm
