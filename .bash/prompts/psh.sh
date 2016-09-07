# Usage:
# $ source install.sh

CMD="psh"
function __psh {
    PS1="$($CMD)"
}
export PS1="$($CMD)"
PROMPT_COMMAND=__psh
