# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

autoload -U compinit
compinit
# Set locale
export LC_ALL=no_NO.UTF-8  
export LANG=no_NO.UTF-8
ZSH_THEME="robbyrussell"
HIST_STAMPS="dd/mm/yyyy"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git autojump brew osx)
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/local/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^[^N' newtab
bindkey '^?' backward-delete-char

# aliases
alias vim="stty stop '' -ixoff; vim"

