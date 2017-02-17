#!/bin/bash

do_download(){
    fetch_dir=$1;
    if [ ! -d $fetch_dir ]; then
        echo "$fetch_dir is not vaild!"
        exit 1;
    fi
    cd $fetch_dir
    test_exists $fetch_dir
    set +e
    type "git" >/dev/null 2>/dev/null
    has_git=$?
    set -e
    if [ "$has_git" -eq 0 ];then
        echo "fetching source from github"
        do_fetch  $fetch_dir;
    else
        echo "can't locate git ,using archive mode."
        do_download_archive $fetch_dir;
    fi
    echo "awesome-mac-things is downloaded to $fetch_dir/awesome-mac-things"
}

do_download_archive(){
    wget https://github.com/superhj1987/awesome-mac-things/archive/v1.0.zip -O awesome-mac-things.zip
    unzip awesome-mac-things.zip
    rm -rf awesome-mac-things.zip
    mv awesome-mac-things-1.0 awesome-mac-things
    cd awesome-mac-things
}

do_fetch(){
    fetch_dir=$1;
    if [ ! -d $fetch_dir ]; then
        echo "$fetch_dir is not vaild!"
        exit 1;
    fi
    cd $fetch_dir ;
    test_exists awesome-mac-things;
    git clone https://github.com/superhj1987/awesome-mac-things.git awesome-mac-things --depth=1
    cd awesome-mac-things 
    return 0 
}

test_exists(){
    if [ -e awesome-mac-things ]; then
        echo "$1/awesome-mac-things already exist!"
        while(true);do
            echo -n "(q)uit or (r)eplace?"
            read choice < /dev/tty
            if [ "$choice" = "q" ];then
                exit 0;
            elif [ "$choice" = "r" ];then
                rm -fr $1/awesome-mac-things
                break;
            else
                echo "$choice is not valid!"
            fi  
        done
    fi
}

do_install(){
    echo '***install need sudo,please enter password***'
    sudo make install
    echo 'awesome-mac-things was installed to /usr/local/bin,have fun.'
}

main(){
    echo "Launching awesome-mac-things installer..."
    do_download `pwd`
    do_install
}

main "$@"