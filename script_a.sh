#!/bin/bash

#
# script for correction of the server names in 100 files;
#

for file in /YourDir/*
    do 
       sed -i 's/nginx-01.com/nginx-02.com/' $file
    done
