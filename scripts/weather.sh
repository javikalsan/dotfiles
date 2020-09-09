#!/bin/sh

if [ $1 ]
then
    curl -s v2.wttr.in/"$1"
else
    curl -s v2.wttr.in
fi
