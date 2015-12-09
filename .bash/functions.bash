# Remove *.pyc files
rmpyc() {
    find . -name "*.pyc" -delete
}

# Remove .DStore files
rmdstore() {
    find . -name ".DS_Store" -delete
}

### Git functions

updaterepos() {
    W=`pwd`;for i in $(find . -name .git);do D=$i;D=${D%/*};cd $W/$D;pwd;git pull;done
}

### Docker functions

# Clean docker
dclean() {
    docker rm -f $(docker ps -a -q)
    docker rmi $(docker images -q)
}
