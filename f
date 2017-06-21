#!/bin/bash

cmd="find"

for var in "$@"
do
    cmd=$cmd" | grep --color=always -i "$var
done

echo $cmd
eval $cmd | tee /dev/tty | wc -l

#find | grep --color=always -i $1
