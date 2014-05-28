# ~/bin Path
#
# Useful for custom scripts, sometimes better than bash functions.
# Just put any script ( python, ruby and php also works ) under ~/bin and
# it will be available as a normal command.
#
PATH="~/.bin:$PATH"

# Xcode & Developer tools.
#
# https://developer.apple.com/technologies/tools/
# Tools like gcc or make are under this directory. These tools are provided
# by Apple once Xcode is installed.
#
PATH="/Applications/Xcode.app/Contents/Developer/usr/bin:$PATH"

# Cabal: Haksell packages.
#
# http://www.haskell.org/cabal/
# Configures haskell PATH for binaries and installed packages.
#
PATH="~/.cabal/bin:$PATH"

# Brew: The missing OSX package manager.
#
# http://brew.sh/
# Configures homebrew PATH for binaries and installed packages executables.
#
PATH="/usr/local/bin:$PATH"

# Ruby.
#
# https://www.ruby-lang.org
# Configures PATH for ruby interpreter.
#
# PATH="/usr/local/Cellar/ruby/2.1.1_1/bin:$PATH"
PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Chef.
#
# PATH="/opt/chef/embedded/bin:$PATH"
