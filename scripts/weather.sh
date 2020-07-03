#!/bin/sh

if [ $1 ]
then
    curl v2.wttr.in/"$1"
else
    curl v2.wttr.in
fi
