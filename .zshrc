# Path to your oh-my-zsh installation.
export ZSH=~/.dotfiles/oh-my-zsh

# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="apple"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH="$PATH:/opt/local/bin:/opt/local/sbin:$HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin"

source ~/.dotfiles/.functions
source ~/.dotfiles/.aliases

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
# export ARCHFLAGS="-arch x86_64"
# export SSH_KEY_PATH="~/.ssh/dsa_id"

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

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/agaponov/Downloads/cocos2d-x-3.15.1/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_X_ROOT for cocos2d-x
export COCOS_X_ROOT=/Users/agaponov/Downloads
export PATH=$COCOS_X_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT=/Users/agaponov/Downloads/cocos2d-x-3.15.1/templates
export PATH=$COCOS_TEMPLATES_ROOT:$PATH

# Add environment variable NDK_ROOT for cocos2d-x
export NDK_ROOT=/Users/agaponov/Downloads/android-ndk-r15b/build
export PATH=$NDK_ROOT:$PATH

# Add environment variable ANT_ROOT for cocos2d-x
export ANT_ROOT=/usr/local/Cellar/ant/1.10.1/bin
export PATH=$ANT_ROOT:$PATH

export PATH="$HOME/.cargo/bin:$PATH"

export MPLBACKEND="module://itermplot"
export PATH=/usr/local/share/python:$PATH

. /Users/agaponov/Documents/torch-cl/install/bin/torch-activate
