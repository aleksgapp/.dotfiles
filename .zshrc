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
export GOPATH=$HOME/Development
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export EDITOR="mvim -v"

# ~/.cowscript.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export PATH="$PATH:$HOME/Library/Haskell/bin:$HOME/Documents/arcanist/bin"
export PATH="$HOME/.cargo/bin:$PATH"

export PYTHONPATH=$PYTHONPATH:$(xcode-select -p)/../SharedFrameworks/LLDB.framework/Resources/Python

export MPLBACKEND="module://itermplot"
export PATH=/usr/local/share/python:$PATH

export GPG_TTY=$(tty)
export PATH="/usr/local/opt/python/libexec/bin:$PATH"


# Options to fzf command
export FZF_COMPLETION_OPTS='+c -x'

# Use fd (https://github.com/sharkdp/fd) instead of the default find
# command for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --follow --exclude ".git" . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" . "$1"
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval $(thefuck --alias)
source /Users/agaponov/Development/git-subrepo/.rc

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/agaponov/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/agaponov/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/agaponov/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/agaponov/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export FLUTTER_ROOT=/Users/agaponov/Documents/flutter
