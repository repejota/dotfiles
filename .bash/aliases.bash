# Enable colorized output.
alias ls='ls -G'

# Use grep with color always
alias grep="grep --color=always"

# Update my system
alias update_apple="sudo softwareupdate -i -a"
alias update_brew="brew bundle Brewfile"
alias update_node="sudo npm update npm -g; sudo npm update -g"
alias update_ruby="sudo gem update --system; sudo gem update"
alias update_python="sudo pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs pip install -U"
alias update="update_apple; update_brew; update_node; update_ruby; update_python"

# Away from keyboard ( OSX Suspend )
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Reload shell configuration
alias reload="exec $SHELL -l"

# I'm lazy :)
alias ssh="ssh -A"

# Mutt aliases
alias mutt.grn='mutt -F ~/.mutt/raulperez@grn.es -f imaps://mail.grn.es'
alias mutt.repejota='mutt -F ~/.mutt/repejota@gmail.com'
alias mutt.raul='mutt -F ~/.mutt/raul@repejota.com'

# Colorify
alias colorify='grc -es --colour=auto '

