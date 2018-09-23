# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/pandu/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# exports
export EDITOR=/bin/subl

# aliases
alias r="ranger"
alias htop="htop --tree"

# pacman aliases
alias pacc="pacman -Q | wc -l"
alias paci="sudo pacman -S"
alias pacr="sudo pacman -R"
alias pacclean="sudo pacman -Rns $(pacman -Qtdq)"

# config files
alias cfi3="subl ~/.config/i3/config"
alias cfi3b="subl ~/.i3blocks.conf"
alias cft="subl ~/.config/termite/config"
alias cfz="subl ~/.zshrc"
alias cfr="subl ~/.config/ranger/rc.conf"

# git aliases
alias gits="git status"
alias gita="git add"
alias gitc="git commit"
alias gitp="git push"
alias gitd="git diff"
alias gitb="git branch"

# netctl aliases
alias ns="netctl start"

#jetbrains aliases
alias pycharm="~/jetbrains/pycharm/bin/pycharm.sh"
alias clion="~/jetbrains/clion/bin/clion.sh"
alias android-studio="~/jetbrains/android-studio/bin/studio.sh"

# mount aliases
alias mountwinc="sudo mount /dev/sda4 /home/pandu/mounts/winc"
alias umountwinc="sudo umount /home/pandu/mounts/winc"
alias mounthyperdrive="sudo mount /dev/sda5 /home/pandu/mounts/hyperdrive"
alias umounthyperdrive="sudo umount /home/pandu/mounts/hyperdrive"
alias mountubuntu="sudo mount /dev/sda7 /home/pandu/mounts/ubuntu"
alias umountubuntu="sudo umount /home/pandu/mounts/ubuntu"

# ssh aliases
alias sshkrishna="nohup xterm -e ssh yashasvi@10.129.2.170 > /dev/null &"
# libvnf
alias sshran="nohup xterm -e ssh -t ran@10.129.2.113 'cd /home/ran/trishal/mtcp-p/apps/kb-sc-epc/include-epc ; bash -l' > /dev/null &"
alias sshmme="nohup xterm -e ssh -t sgw@10.129.2.106 'cd /home/sgw/trishal/mtcp-p/apps/ ; bash -l' > /dev/null &"
alias sshhss="nohup xterm -e ssh -t sgw@10.129.2.111 'cd /home/sgw/trishal/hss ; bash -l' > /dev/null &"
alias sshsgw="nohup xterm -e ssh -t rahul2514888@10.129.2.114 'cd /home/rahul2514888/trishal/mtcp-p/apps/kb-sc-epc ; bash -l' > /dev/null &"
alias sshpgw="nohup xterm -e ssh -t rahul2514888@10.129.2.112 'cd /home/rahul2514888/trishal/mtcp-p/apps/kb-sc-epc ; bash -l' > /dev/null &"

# sshfs aliases
# rnd
alias sshfskrishna="sshfs /home/pandu/sshfs/krishna yashasvi@10.129.2.170:"
# libvnf
# mount
alias sshfsran="sshfs /home/pandu/sshfs/libvnf/ran ran@10.129.2.113:"
alias sshfsmme="sshfs /home/pandu/sshfs/libvnf/mme sgw@10.129.2.106:"
alias sshfshss="sshfs /home/pandu/sshfs/libvnf/hss sgw@10.129.2.111:"
alias sshfssgw="sshfs /home/pandu/sshfs/libvnf/sgw rahul2514888@10.129.2.114:"
alias sshfspgw="sshfs /home/pandu/sshfs/libvnf/pgw rahul2514888@10.129.2.112:"
alias sshfsepc="sshfsran && sshfsmme && sshfshss && sshfssgw && sshfspgw"
# umount
alias umsshfsran="fusermount -u /home/pandu/sshfs/libvnf/ran"
alias umsshfsmme="fusermount -u /home/pandu/sshfs/libvnf/mme"
alias umsshfshss="fusermount -u /home/pandu/sshfs/libvnf/hss"
alias umsshfssgw="fusermount -u /home/pandu/sshfs/libvnf/sgw"
alias umsshfspgw="fusermount -u /home/pandu/sshfs/libvnf/pgw"
alias umsshfsepc="umsshfsran ; umsshfsmme ; umsshfshss ; umsshfssgw ; umsshfspgw"
