#!/bin/bash

if [ -z $1 ]; then
    echo 'param error'
    exit 1
fi

DIR=$2
if [ -z $DIR ]; then
   OLD_IFS=”$IFS”
   IFS=”/”
   arr=($1)
   IFS=”$OLD_IFS”
   len=${#arr[@]}
   DIR=${arr[($len-1)]}
fi 

git clone $1 $2

echo 'git cloned to $DIR'

init_gitignore.sh

