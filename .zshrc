# Path to your oh-my-zsh installation.
export ZSH=/Users/aleksgapp/.oh-my-zsh

# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="robbyrussell"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

plugins=(git)


export PATH="/opt/local/bin:/opt/local/sbin:~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh
source ~/.functions
source ~/.aliases

# export LANG=en_US.UTF-8
# export ARCHFLAGS="-arch x86_64"
# export SSH_KEY_PATH="~/.ssh/dsa_id"

export TERM=xterm-256color

# go-lang env
export GOROOT=/usr/local/go
export GOPATH=~/Development
export PATH=$PATH:$GOROOT/bin

# ~/.cowscript.sh
