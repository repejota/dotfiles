# -------------------------------------------------------------------
# use nocorrect alias to prevent auto correct from "fixing" these
# -------------------------------------------------------------------
alias mux='nocorrect mux'
alias tmux='nocorrect tmux'

# Clean cached preferences
alias fixpref='killall -u $LOGNAME cfprefsd'

# Always color on grep
alias grep="grep --color=always"

# -------------------------------------------------------------------
# directory information
# -------------------------------------------------------------------
alias ls='ls -GFh' # Colorize output, add file type indicator, and put sizes in human readable format
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
alias 'dus=du -sckx * | sort -nr' #directories sorted by size
# gsh shows the number of commits for the current repos for all developers
alias gsh="git shortlog | grep -E '^[ ]+\w+' | wc -l"
# gu shows a list of all developers and the number of commits they've made
alias gu="git shortlog | grep -E '^[^ ]'"

alias ssh="ssh -A"

# -------------------------------------------------------------------
# Oddball stuff
# -------------------------------------------------------------------
alias 'sloc=/usr/local/sloccount/bin/sloccount'
alias 'rm=rm -i' # make rm command (potentially) less destructive

alias sz='source ~/.zshrc'

alias t=tmux
alias mux=teamocil

# Update my system
alias update_apple="sudo softwareupdate -i -a"
alias update_brew="brew bundle ~/Projects/dotfiles.osx/Brewfile"
alias update_node="sudo npm update npm -g; sudo npm update -g"
alias update_ruby="sudo gem update --system; sudo gem update"
alias update_python="sudo pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs pip install -U"
alias update="update_apple; update_brew; update_node; update_ruby; update_python"

