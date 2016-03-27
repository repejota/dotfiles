space=" "

function __username {
    local username="\u"
    printf "%s" "$username"
}

function __hostname {
    local hostname="\h"
    printf "%s" "$hostname"
}

function __user_host {
    local format="$(tput setaf 2)"
    local reset="$(tput setaf 9)"
    printf "%s" "$format$(__username)@$(__hostname)$reset"
}

# Builds new prompt
function __promptline_ps1 {
    printf "%s" "$(__user_host)$space"
}

# Main function
# Setups beeded variables, shortcuts and builds a new prompt
function __promptline {
    PS1="$(__promptline_ps1)"
}

# Bash provides an environment variable called PROMPT_COMMAND. The contents
# of this variable are executed as a regular Bash command just before Bash
# displays a prompt.
PROMPT_COMMAND=__promptline
