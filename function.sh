#!/bin/bash
function name() {
    echo "wow"
}
name
# Again the variables passed to the functions are 
# $1-9
# Called like so: name $USER $OPTIONS
# Or so: name "world" "vim on"
function secondName() {
    echo $1
    echo $2
}
secondName "mbv" "dave"