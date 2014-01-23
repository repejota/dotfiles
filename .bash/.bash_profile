# If not running in interactive mode, don't do anything and stop loading
# bash configuration settings.
#
[ -z "$PS1" ] && return

# Enable support for 256 colors on iTerm2
#
export TERM=xterm-256color

# Load custom .inputrc
# Remaps keyboard and provides iTerm2 key shortcuts
#
export INPUTRC=~/.inputrc

# Load custom partial configuration settings files:
#   - ~/.path     : Used to extend user's `$PATH` for command locations.
#   - ~/.lscolors : Setups ls color configuration by file & folder type.
#   - ~/.colors   : Defines common colors for the console, shell, etc ...
#   - ~/.prompt   : Sets a prompt with color & git support.
#   - ~/.aliases  : Setups custom command aliases.
#
for file in ~/.{path,color,lscolors,prompt,aliases}; do
    [ -r ".bash/$file" ] && [ -f ".bash/$file" ] && source ".bash/$file"
done
unset file

source ~/.bash/path.bash
source ~/.bash/history.bash

# Use vim as default editor.
#
export EDITOR=vim
export VISUAL=vim

# Use most as a pager so it can be colorized.
#
export PAGER="most -s"

# Make sure terminal wraps lines correctly on resizing.
#
shopt -s checkwinsize

# Case-insensitive globbing (used in pathname expansion).
#
shopt -s nocaseglob

# Small typos to be corrected when changing directory.
#
shopt -s cdspell

# Append to history rather than overwritting it
#
shopt -s histappend

# Enable some Bash 4 features when possible:
#   - `autocd`, e.g. `**/qux` will `./foo/bar/baz/qux`
#   - Recursive globbing, e.g. `echo **/*.txt`
#
for option in autocd globstar; do
    shopt -s "$option" 2> /dev/null
done

source ~/.bash/completion.bash
