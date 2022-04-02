export ZSH="$HOME/.oh-my-zsh"

HYPHEN_INSENSITIVE="true"

plugins=(
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# sources
# source /etc/profile.d/vte.sh

# exports
export EDITOR=/bin/nvim

export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# aliases
alias r="ranger"
alias htop="htop --tree"
alias tig="tig --all"
alias t="trash-list"

# mount aliases
alias mounthyperdrive="sudo mount /dev/nvme0n1p5 $HOME/mounts/hyperdrive"
alias umounthyperdrive="sudo umount $HOME/mounts/hyperdrive"

# PROMPT="%B%F{cyan}%d%f %F{green}[%j jobs]%f %F{magenta}[%? returned]%f%b "
source <(/usr/bin/starship init zsh --print-full-init)
