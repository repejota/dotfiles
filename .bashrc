# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Use custom INPUTRC
export INPUTRC=~/.inputrc

# don't put duplicate lines in the history.
export HISTCONTROL=ignoredups

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable color support of ls and also add handy aliases
export TERM=screen-256color
# eval `dircolors ~/.dircolors`

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias ls='ls -G'
alias vim="mvim -v"
alias grep="grep --color=always"
alias g="git"
alias ssh="ssh -A"

# Add Git oompletion
source `brew --prefix git`/etc/bash_completion.d/git-completion.bash
complete -o default -o nospace -F _git g

#################
# Prompt Colors #
#################
BLACK="\[\033[0;30m\]"
BLUE="\[\033[0;34m\]"
GREEN="\[\033[0;32m\]"
CYAN="\[\033[0;36m\]"
RED="\[\033[0;31m\]"
PURPLE="\[\033[0;35m\]"
BROWN="\[\033[0;33m\]"
LIGHT_GRAY="\[\033[0;37m\]"
DARK_GRAY="\[\033[1;30m\]"
LIGHT_BLUE="\[\033[1;34m\]"
LIGHT_GREEN="\[\033[1;32m\]"
LIGHT_CYAN="\[\033[1;36m\]"
LIGHT_RED="\[\033[1;31m\]"
LIGHT_PURPLE="\[\033[1;35m\]"
YELLOW="\[\033[1;33m\]"
WHITE="\[\033[1;37m\]"
NOTHING="\[\033[0m\]"

##################
# Default Colors #
##################
C_USER="$WHITE"
C_OP_PAREN="$DARK_GRAY"
C_AMP="$NOTHING"
C_HOST="$CYAN"
C_CL_PAREN="$DARK_GRAY"
C_COLON="$NOTHING"
C_PWD="$WHITE"
C_GT="$NOTHING"

#############################
# Custom Root Prompt Colors #
#############################
if [ $EUID = "0" ]; then
  C_OP_PAREN="$YELLOW"
  C_USER="$LIGHT_RED"
  C_CL_PAREN="$YELLOW"
fi

######################
# Assign to PSGLOBAL #
######################
PSGLOBAL="$XTITLE""$C_USER""\u""$C_AMP""@""$C_HOST""\h""$C_COLON"":$C_PWD""\w""$C_GT"">""$NOTHING "

export PSGLOBAL
source ~/Projects/dotfiles.osx/gitbash.sh

# Dev Path
export PATH=$PATH:/Applications/Xcode.app/Contents/Developer/usr/bin
# HOME/bin Path
export PATH="$HOME/bin:$PATH"
# Cabal ( Haskell packages ) Path
export PATH="~/.cabal/bin:$PATH"
# Brew
export PATH="/usr/local/bin:$PATH"
# Android
export PATH=${PATH}:$HOME/Src/adt-bundle-mac/sdk/platform-tools:$HOME/Src/adt-bundle-mac/sdk/tools
# Ruby
export PATH="/usr/local/opt/ruby/bin:$PATH"
# Golang
export PATH="/Users/raulperez/Src/go/bin:$PATH"
# Depot tools
export PATH="$PATH:/Users/raulperez/Src/depot_tools"
