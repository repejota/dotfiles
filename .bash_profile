# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
    shopt -s "$option" 2> /dev/null
done

# Use custom INPUTRC
export INPUTRC=~/.inputrc

# don't put duplicate lines in the history.
export HISTCONTROL=ignoredups

# enable color support of ls and also add handy aliases
export TERM="xterm-256color"
export TERM="screen-256color-bce"

export EDITOR=vim
export VISUAL=vim

# Use most as a pager so it can be colorized.
#
export PAGER="most -s"

source ~/.bash/path.bash
source ~/.bash/aliases.bash
source ~/.bash/completion.bash
source ~/.bash/history.bash
source ~/.bash/prompts/powerline.bash
source ~/.contrib/base16-shell/base16-tomorrow.dark.sh
