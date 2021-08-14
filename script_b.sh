#!/bin/bash

#
# script for creating 10 files with 1k random characters and timestamp, going to call it every 6 hours by crontab 0 */6 * * * PathToScript/script_b.sh
#

for (( a = 1; a < 11; a++ ))
do
    cat /dev/urandom | tr -dc "[:alnum:]" | head -c1000 > test_$(date "+%H.%M.%S")_$a.txt
   
done