if [ ! -z $1 ]; then
    DIR=$2
    if [ -z $DIR ]; then
        OLD_IFS=”$IFS”
        IFS=”/”
        arr=($1)
        IFS=”$OLD_IFS”
        len=${#arr[@]}
        DIR=${arr[($len-1)]}
    fi

    git clone $1 $DIR

    echo 'git cloned to '$DIR

    cd $DIR
fi

echo '.DS_Store\nbuild\ntarget\n.idea\n.classpath\n.project\n*.iml\nout' > .gitignore
