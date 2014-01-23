# Bash command history
# Setups a lager history (allow 32³ entries; default is 500)
#
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
# Don't allow duplicate lines in history.
export HISTCONTROL=ignoredups
# Make some common commands not show up in history.
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"

