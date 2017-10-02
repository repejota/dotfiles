# If not running interactively, don't do anything
case $- in
    *i*) ;;
    *) return;;
esac

shopt -s cdable_vars        # if cd arg is not valid, assumes its a var defining a dir
shopt -s cdspell            # autocorrects cd misspellings
shopt -s checkwinsize       # update the value of LINES and COLUMNS after each command if altered
shopt -s dotglob            # include dotfiles in pathname expansion
shopt -s expand_aliases     # expand aliases
shopt -s extglob            # enable extended pattern-matching features
shopt -s hostcomplete       # attempt hostname expansion when @ is at the beginning of a word
shopt -s nocaseglob         # pathname expansion will be treated as case-insensitive

set -o vi                   # set vi-style command line editing

# Use custom INPUTRC
export INPUTRC=~/.inputrc

# Set default editor
export EDITOR=vim
export VISUAL=vim

# Load ~/.profile regardless of shell version
if [ -e "$HOME"/.profile ] ; then
  . "$HOME"/.profile
fi

source .bash/history.bash
source .bash/path.bash
source .bash/aliases.bash
source .bash/functions.bash
source .bash/completion.bash
source .bash/ui.bash
