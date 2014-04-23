# We want /usr/local/bin before /usr/bin
PATH="/usr/local/bin:$PATH"

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
PATH="$HOME/.cabal/bin:$PATH"

# Ruby.
#
# https://www.ruby-lang.org
# Configures PATH for ruby interpreter.
#
PATH="/usr/local/opt/ruby/bin:$PATH"

# Golang.
#
# http://golang.org/
# Configures PATH for binaries and for libraries.
#
PATH="$HOME/Src/go/bin:$PATH"
GOPATH="/usr/local/lib/go"
export PATH
export GOPATH

# ~/.bin Path
#
# Useful for custom scripts, sometimes better than bash functions.
# Just put any script ( python, ruby and php also works ) under ~/bin and
# it will be available as a normal command.
#
PATH="$HOME/.bin:$PATH"

# Android SDK defaults
#
# http://developer.android.com/sdk/
# As we install android-sdk through homebrew, don't need to specify where
# the executables and tools are.
#
export ANDROID_PROJECTS_HOME="$HOME/Projects"
export ANDROID_DEFAULT_PKG=com.repejota

# Chef
PATH="/opt/chef/embedded/bin:$PATH"
export PATH

