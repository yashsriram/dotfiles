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

bindkey '^R' history-incremental-search-backward

autoload -Uz promptinit
promptinit
prompt walters

export PS1="[%c]$ "
export RPS1="%t"

export EDITOR=/bin/nano
