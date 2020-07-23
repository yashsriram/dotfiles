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
* zathura, xdotool [for pdfs, latex forward search]
* pamixer [for volume control]
* bc [for i3scripts]
* tig [git tui client]
* networkmanager [instead of netctl]
* dunst [for notifications]
* scrot [for screenshots]
* speedcrunch [calculator]
* xcompmgr [composition manager - mostly used to remove black regions above titlebars]
* cronie [for cron tabs]
* flite and SoX [for text to speech utility]
* tmux

# Config
* In file `/etc/systemd/logind.conf` set HandlePowerKey=ignore [for disabling immediate shutdown on power button press]
* enable `NetworkManager.service`
* use `.config/cronscripts/crontab` as crontab file and enable `cronie.service`

# Pacman
* in /etc/pacman.conf uncomment
  * VerbosePkgList
  * Color
* add a line in Misc options (for easter egg)
  * ILoveCandy

# TRIM for SSD
* To use TRIM (which is supported by linux out of the box) run
  * `sudo systemctl start fstrim.timer`
  * `sudo systemctl enable fstrim.timer`
* Why do trim? Read [this](https://blog.backslasher.net/linux-and-ssds-should-you-trim.html)
  * TL;DR because it improves life span

# intel powersaving
* add kernel parameters `enable_fbc=1 enable_psr=1` in `/etc/modprobe.d/i915.conf`
  * add line `options i915 enable_fbc=1 enable_psr=1` in `/etc/modprobe.d/i915.conf`

# X lockup
* add `acpi_osi=! acpi_osi=\"Windows 2009\"` to kernel parameters
  * i.e. in `/etc/default/grub` append to existing parameters `GRUB_CMDLINE_LINUX_DEFAULT="foo bar acpi_osi=! acpi_osi=\"Windows 2009\""`

# nvidia GPU
<https://wiki.archlinux.org/index.php/NVIDIA>