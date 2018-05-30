#!/bin/sh
set -e
DIR=$(mktemp -t -d rsa-art-XXXXXX)
trap "rm -f $DIR/key*; rmdir $DIR" EXIT HUP INT QUIT TERM

while :
do
    ART=$(ssh-keygen -t rsa -f $DIR/key -N "" | tail -n 11)
    rm -f $DIR/key
    /bin/echo -e "\x1Bc"
    echo "$ART"
done
