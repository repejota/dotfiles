# If we are in interactive mode load .bash_profile where we have our custom
# bash configuration settings.
#
[ -n "$PS1" ] && source ~/.bash/.bash_profile

GOROOT=`go env GOROOT`
export GOROOT
unset GOPATH
GOPATH=~/go
export GOPATH
GOBIN=$GOPATH/bin
export GOBIN
PATH=$GOPATH/bin:".":$PATH
export PATH
