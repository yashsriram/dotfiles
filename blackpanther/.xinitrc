
#! /bin/bash
xrandr --auto
xrdb ~/.Xresources
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh
pactl set-sink-volume alsa_output.pci-0000_00_1f.3.analog-stereo 80%
xrandr --output eDP-1 --brightness 0.35
~/.bg_changer > /dev/null &
xcompmgr &
exec i3

