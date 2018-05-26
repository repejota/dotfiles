# Colorize ls
alias ls="ls -lA"
alias l=ls

# Instead of ls use exa
if [ -x $(which exa) ]; then
    alias ls="/usr/local/bin/exa"
    alias l="/usr/local/bin/exa -la --git"
fi

# SSH Agent
alias ssh="ssh -A"

# Docker
if [ -x $(which docker-compose) ]; then
    alias dc="docker-compose"
fi
if [ -x $(which docker-machine) ]; then
    alias dm="docker-machine"
fi
