#!/bin/bash

# sleep 99999

clone_repo(){
    url=$1
    git clone --depth=1 $url 
    if [ $? != 0 ] ;then
        exit 1 
    fi
}


param="$@"
setrepo=false
echo $@
for p in ${param[@]}; do
    prefix="--repo="
    if [[ $p = $prefix* ]] ;then
        url=${p#$prefix}
        echo "clone repo : $url ....."
        clone_repo $url
        echo "clone repo success"
        setrepo=true
        param=("${param[@]/$p}") 
        break
    fi
done

if [ "$setrepo" = false ] ; then
    echo 'pls set repo with --repo=xxx'
    exit 0
fi

#echo $param
cloc $param .


