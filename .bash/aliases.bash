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
alias dc="docker-compose"
alias dm="docker-machine"
