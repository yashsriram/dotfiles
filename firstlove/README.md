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
* nerd-fonts-source-code-pro, ttf-emojione-color, noto-fonts-emoji [for unicode emojis]
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
* xf86-input-synaptics [touchpad driver for X]
* tmux
* mbsync, msmtp, gnome-keyring, neomutt, notmuch for mail
* bluez, bluez-utils, bluetoothctl for bluetooth
* taskwarrior for managing tasks and todo lists
* trash-cli for trash file management
* ntpd to automatically set time from internet

# Config
* In file `/etc/systemd/logind.conf` set HandlePowerKey=ignore [for disabling immediate shutdown on power button press]
* enable `NetworkManager.service`
* use `.config/cronscripts/crontab` as crontab file and enable `cronie.service`

## Neomutt
* Use `mbsync` to sync mails between remote and local stores
  * Edit `~/.mbsyncrc` for that. Add mails to the file accordingly
* Use `msmtp` for sending mails
  * Edit `~/.msmtprc` for that. Add mails and smtp server infor to the file
* Edit `~/.neomutt/neomuttrc` for neomutt config
  * Add per-account info (like mailbox paths and smtp info) in `~/.neomutt/accounts/<account>` file
  * Add folder hook to the corresponding file for each account in neomuttrc
  * Source an account file by default
  * Add all mailboxes in the `mailboxes ...` option in neomuttrc
* Edit `~/.neomutt/colors` for neomutt colors and `~/.neomutt/mailcap` for selecting programs to open mails
* For msmtp store password using gnome-keyring `secret-tool store --label=msmtp host smtp.your.domain service smtp user yourusername`
  * For ex `secret-tool store --label=msmtp host smtp.gmail.com service smtp user yash.3997`
* For getting password from gnome-keyring for mbsync use `PassCmd "secret-tool lookup host smtp.your.domain service smtp user username"`
  * For ex `PassCmd "secret-tool lookup host smtp.gmail.com service smtp user yash.3997"`
* For gnome-keyring to work `/etc/X11/xinit/xinitrc.d/50-systemd-user.sh` needs to be sourced

## Pacman
* in /etc/pacman.conf uncomment
  * VerbosePkgList
  * Color
* add a line in Misc options (for easter egg)
  * ILoveCandy

## Synaptics
* Can be configured on the fly using synclient or written to config file at /etc/X11/xorg.conf.d/70-synaptics.conf, refer to wiki for format
* Additional preferred options are
  * PalmDetect=1
  * TapButton1=1
  * HorizTwoFingerScroll=1

## Bluetooth
* The generic Bluetooth driver is the btusb Kernel module. Check whether that module is loaded. If it's not, then load the module.
* Start/enable bluetooth.service

## Prime Video in Google Chrome
* Install `chromium-widevine`
* Symlink /usr/lib/chromium/libwidevinecdm.so to /opt/google/chrome/libwidevinecdm.so (forcefully if needed)
  * `ln -s /usr/lib/chromium/libwidevinecdm.so /opt/google/chrome/`

