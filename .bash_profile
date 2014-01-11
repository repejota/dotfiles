# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# enable color support of ls and also add handy aliases
TERM=screen-256color
export TERM

# Use custom INPUTRC
INPUTRC=~/.inputrc
export INPUTRC

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.colors defines common colors for the console.
# * ~/.prompt sets a prompt with git support.
# * ~/.aliases setups custom command aliases.
for file in ~/.{path,colors,prompt,aliases}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
# don't put duplicate lines in the history.
export HISTCONTROL=ignoredups
# Make some commands not show up in history
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"

# Prefer US English and use UTF-8
export LANG="en_US"
export LC_ALL="en_US.UTF-8"

# Use vim as default editor on simple and visual terminals
EDITOR=vim
export EDITOR
VISUAL=vim
export VISUAL

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

# enable coloured man pages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# make sure terminals wrap lines correctly after resizing them.
shopt -s checkwinsize

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# small typos to be automatically corrected when changing directory
shopt -s cdspell

# append to history rather than overwritting it
shopt -s histappend

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
        shopt -s "$option" 2> /dev/null
done

# Bash completition. http://bash-completion.alioth.debian.org/
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
