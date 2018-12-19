# Tools
  * i3-gaps
  * i3blocks
  * d\_menu
  * feh
  * zsh
  * bc
  * oh-my-zsh
  * xorg
  * pamixer
  * ranger
  * htop
  * mons

# X lockup
* add `acpi_osi=! acpi_osi=\"Windows 2009\"` to kernel parameters
  * i.e. in `/etc/default/grub` append to existing parameters `GRUB_CMDLINE_LINUX_DEFAULT="foo bar acpi_osi=! acpi_osi=\"Windows 2009\""`

# run on nvidia GPU (solely, no switching)
* update and upgrade 
  * `sudo pacman -Syu`
  * installing updated nvidia driver with outdated linux kernel will not work
* install `nvidia` `nvidia-utils`
  * `sudo pacman -S nvidia nvidia-utils`
* prepend `xrandr --auto` to your xinitrc
  * after installing nvidia the output name of your inbuilt monitor according to xrandr may change
* add `rcutree.rcu_idle_gp_delay=1` as kernel parameter
  * in `/etc/default/grub` append to existing parameters `GRUB_CMDLINE_LINUX_DEFAULT="foo bar rcutree.rcu_idle_gp_delay=1"`
* add `nvidia` module in mkinitcpio config file
  * in `/etc/mkinitcpio.conf` append to existing modules `MODULES=(foo bar nvidia)`
* `sudo mkinitcpio -p linux`
* `sudo grub-mkconfig -o /boot/grub/grub.cfg`
* create a pacman hook `/etc/pacman.d/hooks/nvidia.hook` so that nvidia driver gets updated with linux kernel always
```
    [Trigger]
    Operation=Install
    Operation=Upgrade
    Operation=Remove
    Type=Package
    Target=nvidia

    [Action]
    Depends=mkinitcpio
    When=PostTransaction
    Exec=/usr/bin/mkinitcpio -P
```
# run selected programs only on nvidia GPU (switching)
* follow instructions of above sections
* install `bumblebee` as described in the arch wiki page
  * install `bumblebee` `mesa` `xf86-video-intel`
  * add the user to group bumblebee `sudo gpasswd -a user bumblebee`
  * enable bumblebee service `sudo systemctl enable bumblebeed.service`
  * reboot
* by default everything is run using integrated GPU, to specify an application to run on nvidia GPU use
  * `optirun <program-name>`
