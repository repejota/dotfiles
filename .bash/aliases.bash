# Colorize ls
colorflag="-G"
alias ls="ls -la ${colorflag}"

# Colorize grep
alias grep='grep --color=always'
alias fgrep='fgrep --color=always'
alias egrep='egrep --color=always'

# Instead of ls i use exa
alias ls="/usr/local/bin/exa"
alias l="/usr/local/bin/exa -la --git"

# SSH Agent
alias ssh="ssh -A"

# Docker
alias dc="docker-compose"
alias dm="docker-machine"
