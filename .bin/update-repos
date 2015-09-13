#!/bin/sh
W=`pwd`;for i in $(find . -name .git);do D=$i;D=${D%/*};cd $W/$D;pwd;git pull;done
