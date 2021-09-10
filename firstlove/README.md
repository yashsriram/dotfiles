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

