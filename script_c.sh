#!/bin/bash

#
# script for collecting files accessed by java in one directory sorted by pid in different files;
#

mkdir -p /tmp/investigation/

lsof -c java | awk '{print $2}' | uniq | tail -n +2 | 

while read p
    do 
        lsof -p $p > /tmp/investigation/access_$p.txt
    done