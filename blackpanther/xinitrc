#! /bin/bash
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh
pactl set-sink-volume alsa_output.pci-0000_00_1f.3.analog-stereo 80%
xrandr --auto
xrandr --output eDP1 --brightness 0.35
$XDG_CONFIG_HOME/bg_changer > /dev/null &
xcompmgr &
exec i3
# exec dbus-launch leftwm
