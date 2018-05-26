# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable color support of ls and also add handy aliases
export TERM="xterm-256color"

BASE16_SHELL=~/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# Prompt
if [ $(which psh) ]; then
    function __psh {
        PS1="$(psh --segments=virtualenv,cwd,git,root)"
    }
    export PS1="$(psh)"
    PROMPT_COMMAND=__psh
fi
