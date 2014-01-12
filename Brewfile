# Make sure we’re using the latest Homebrew
update

# Upgrade any already-installed formulae
upgrade

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
install coreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
install findutils
# Install Bash 4
install bash

# Install wget with IRI support
install wget --enable-iri

# Install more recent versions of some OS X tools
install vim --override-system-vi

# Install other useful binaries
#
install tmux                    # Terminal multiplexer
install git                     # DCVS tool
install links                   # Future's browser :P
install android-sdk             # Android SDK
install autoconf                # GNU build tools
install automake                # GNU build tools
install sqlite                  # Embeded database
install bash-completion         # Bash completition
install tree                    # Shows fs trees
install nmap                    # Network scanner
install grc                     # Terminal colofity tool
install most

tap homebrew/versions

# Remove outdated versions from the cellar
cleanup
