xrdb /home/pandu/.Xresources
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh
~/.bg_changer > /dev/null &
xcompmgr &
exec i3
