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
export TERM="xterm-256color"
export TERM="screen-256color-bce"

export EDITOR=vim

alias ls='ls -G'
alias tmux="tmux -2"

source .bash/path.bash
source .bash/aliases.bash
source .bash/completion.bash
source .bash/history.bash
source .bash/prompts/powerline.bash
source .contrib/base16-shell/base16-tomorrow.dark.sh

export PATH="/opt/chef/embedded/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
