# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/pandu/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# my config

# prompt
autoload -Uz promptinit
promptinit
prompt walters

# exports
export PS1="[%c] "
export RPS1="%t"
export EDITOR=/bin/nano

# keymaps
bindkey '^R' history-incremental-search-backward
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# aliases
alias i3cfg="vim ~/.config/i3/config"
alias termitecfg="vim ~/.config/termite/config"
