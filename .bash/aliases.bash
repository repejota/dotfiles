# Colorize ls
alias ls="ls -lA"
alias l=ls

# Instead of ls use exa
if [ -x /usr/local/bin/exa ]; then
    alias ls="/usr/local/bin/exa"
    alias l="/usr/local/bin/exa -la --git"
fi

# SSH Agent
alias ssh="ssh -A"

# Docker
if [ -x docker-compose ]; then
    alias dc="docker-compose"
fi
if [ -x docker-machine ]; then
    alias dm="docker-machine"
fi
