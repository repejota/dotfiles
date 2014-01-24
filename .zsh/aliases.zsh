# -------------------------------------------------------------------
# use nocorrect alias to prevent auto correct from "fixing" these
# -------------------------------------------------------------------
alias mux='nocorrect mux'

# -------------------------------------------------------------------
# Ruby stuff
# -------------------------------------------------------------------
# alias ri='ri -Tf ansi' # Search Ruby documentation
# alias rake="noglob rake" # necessary to make rake work inside of zsh
# alias be='bundle exec'
# alias bx='bundle exec'
# alias gentags='ctags .'
#

alias fixpref='killall -u $LOGNAME cfprefsd'

alias grep="grep --color=always"

# -------------------------------------------------------------------
# directory movement
# -------------------------------------------------------------------
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias 'bk=cd $OLDPWD'

# -------------------------------------------------------------------
# directory information
# -------------------------------------------------------------------
alias lh='ls -d .*' # show hidden files/directories only
alias lsd='ls -aFhlG'
alias ls='ls -GFh' # Colorize output, add file type indicator, and put sizes in human readable format
alias ll='ls -GFhl' # Same as above, but in long listing format
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
alias 'dus=du -sckx * | sort -nr' #directories sorted by size

# -------------------------------------------------------------------
# Mac only
# -------------------------------------------------------------------
if [[ $IS_MAC -eq 1 ]]; then
    alias 'smart=diskutil info disk0 | grep SMART' # display SMART status of hard drive
fi

# -------------------------------------------------------------------
# Git
# -------------------------------------------------------------------
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gpl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'
alias gv='git log --pretty=format:'%s' | cut -d " " -f 1 | sort | uniq -c | sort -nr'

# leverage aliases from ~/.gitconfig
alias gh='git hist'
alias gt='git today'

# curiosities
# gsh shows the number of commits for the current repos for all developers
alias gsh="git shortlog | grep -E '^[ ]+\w+' | wc -l"

# gu shows a list of all developers and the number of commits they've made
alias gu="git shortlog | grep -E '^[^ ]'"

alias ssh="ssh -A"


# -------------------------------------------------------------------
# Oddball stuff
# -------------------------------------------------------------------
alias 'sloc=/usr/local/sloccount/bin/sloccount'
alias 'ttop=top -ocpu -R -F -s 2 -n30' # fancy top
alias 'rm=rm -i' # make rm command (potentially) less destructive

# alias to cat this file to display
alias acat='< ~/.zsh/aliases.zsh'
alias fcat='< ~/.zsh/functions.zsh'
alias sz='source ~/.zshrc'

alias mux=teamocil

# Update my system
alias update_apple="sudo softwareupdate -i -a"
alias update_brew="brew bundle ~/Projects/dotfiles.osx/Brewfile"
alias update_node="sudo npm update npm -g; sudo npm update -g"
alias update_ruby="sudo gem update --system; sudo gem update"
alias update_python="sudo pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs pip install -U"
alias update="update_apple; update_brew; update_node; update_ruby; update_python"

