
#! /bin/bash
xrandr --auto
xrdb ~/.Xresources
pactl set-sink-volume alsa_output.pci-0000_00_1f.3.analog-stereo 80%
xrandr --output eDP-1 --brightness 0.35
xrandr --output eDP-1-1 --brightness 0.35
~/.fehbg
exec i3

