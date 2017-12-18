# Path to your oh-my-zsh installation.
export ZSH=~/.dotfiles/oh-my-zsh

# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="refined"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH="/opt/local/bin:/opt/local/sbin:$HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:$PATH"

source ~/.dotfiles/.functions
source ~/.dotfiles/.aliases

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export TERM=xterm-256color

# go-lang env
export GOROOT=/usr/local/go
export GOPATH=~/Development
export PATH=$PATH:$GOROOT/bin
export EDITOR=`which vim`

# ~/.cowscript.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export PATH="$PATH:$HOME/Library/Haskell/bin:$HOME/Documents/arcanist/bin"

export PATH="$HOME/.cargo/bin:$PATH"

export MPLBACKEND="module://itermplot"
export PATH=/usr/local/share/python:$PATH

export GPG_TTY=$(tty)
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
