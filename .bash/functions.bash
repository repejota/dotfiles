# Remove *.pyc files
rmpyc() {
    find . -name "*.pyc" -delete
}

# Remove .DStore files
rmdstore() {
    find . -name ".DS_Store" -delete
}

### Git functions

updaterepos() {
    W=`pwd`;for i in $(find . -name .git);do D=$i;D=${D%/*};cd $W/$D;pwd;git pull;done
}

bclean() {
    git remote prune origin
    git br -d `git br -vv | grep ': gone] ' | awk '{print $1}' | xargs`
}

### Docker functions

# Clean docker
dclean() {
    docker rm -f $(docker ps -a -q)
    docker rmi $(docker images -q)
}

# Prune docker images
dprune() {
    docker image prune -a
}
