# Path configuration

# ~/bin and ./.bin Path
#
# Useful for custom scripts, sometimes better than bash functions.
# Just put any script ( python, ruby and php also works ) under ~/bin and
# it will be available as a normal command.
#
PATH="~/.bin:$PATH"
PATH="./bin:$PATH"

# Xcode & Developer tools.
#
# https://developer.apple.com/technologies/tools/
# Tools like gcc or make are under this directory. These tools are provided
# by Apple once Xcode is installed.
#
PATH="/Applications/Xcode.app/Contents/Developer/usr/bin:$PATH"

PATH="/usr/local/sbin:$PATH"

PATH="/Users/raul/go/bin:$PATH"
