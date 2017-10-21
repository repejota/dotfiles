# Colorize ls
colorflag="-G"
alias ls="ls -la ${colorflag}"

# Colorize grep
alias grep='grep --color=always'
alias fgrep='fgrep --color=always'
alias egrep='egrep --color=always'

# Instead of ls i use exa
alias ls="exa"
alias l="exa -la"

# SSH Agent
alias ssh="ssh -A"
