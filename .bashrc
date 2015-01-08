# If we are in interactive mode load .bash_profile where we have our custom
# bash configuration settings.
#
[ -n "$PS1" ] && source ~/.bash/.bash_profile
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
