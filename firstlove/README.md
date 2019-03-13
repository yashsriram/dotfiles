# Tools
* zsh & oh-my-zsh [default shell]
* xorg [display server]
* i3-gaps [window manager]
  * i3
  * i3blocks
  * i3lock-blur
  * i3-battery-popup
* neovim [text editor] & nvr [to open new file in exisiting nvim session]
* ranger [file manager]
* ranger\_devicons [icons for ranger, depends on nerd-fonts]
* nerd-fonts-source-code-pro, ttf-emojione-color [for unicode emojis]
* xclip [for manual clipboard management]
* htop
* mons [for multi monitor display control]
* d\_menu [general selection from menu]
* feh [to set background picture]
* sxiv [for images]
* zathura [for pdfs]
* pamixer [for volume control]
* bc [for i3scripts]
* xterm [for remote logins]
* tig [git tui client]
* networkmanager [instead of netctl]
* dunst [for notifications]
* scrot [for screenshots]
* speedcrunch [calculator]
* lux [brightness controller]
* xcompmgr [composition manager - mostly used to remove black regions above titlebars]
* cronie [for cron tabs]
* flite and SoX [for text to speech utility]

# Config
* In file `/etc/systemd/logind.conf` set HandlePowerKey=ignore [for disabling immediate shutdown on power button press]
* enable `NetworkManager.service`
* use `.config/cronscripts/crontab` as crontab file and enable `cronie.service`

## Pacman
* in /etc/pacman.conf uncomment
  * VerbosePkgList
  * Color
* add a line in Misc options (for easter egg)
  * ILoveCandy

