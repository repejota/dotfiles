# Bash completition.
# http://bash-completion.alioth.debian.org/
#
if [ $(which brew) ] ; then
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
         . $(brew --prefix)/etc/bash_completion
    fi
fi
