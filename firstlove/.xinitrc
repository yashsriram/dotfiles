
#! /bin/bash
xrdb ~/.Xresources
pactl set-sink-volume 1 80%
xrandr --output eDP-1 --brightness 0.5
~/.fehbg
exec i3
