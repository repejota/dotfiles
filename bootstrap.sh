#!/usr/bin/env bash
# create a boostrap function
function bootstrap() {
    rsync --exclude ".git/" \
          --exclude ".DS_Store" \
          --exclude "Brewfile" \
          --exclude "bootstrap.sh" \
          --exclude "README.md" \
          --exclude "LICENSE.txt" \
          -av
          --no-perms . ~
    source ~/.bashrc
}
# Check for --force/-f argument
if [ "$1" == "--force" -o "$1" == "-f" ]; then
    bootstrap
# If --force/-f argument is not provided ask for file overwrite
# or skip installation
else
    read -p "This may overwrite existing files. Are you sure? (y/n) " -n 1
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        bootstrap
    fi
fi
# Delete boostrap function
unset boostrap
