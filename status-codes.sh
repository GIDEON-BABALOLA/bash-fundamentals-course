#!/bin/bash
# Why status codes
# Did it execute successfully
# What went wrong
# How status codes
# 0 is good
# Not O is bad
# Check with $?
# Bash exit

# read -p " Yes? y/n: " YES
# if [ $YES = "y" ]; then
#   echo "nice"
#   exit 0
# elif [ $YES = "n" ]; then
#    echo "boo"
#    exit 1
# else
#     echo "wrong input"
#     exit -1 
# fi

# This status code in the terminal will be green here even though echo prints 1, but because echo runs successfully before exit, the status code will be green
test -e /bin/bashe
echo $? # Always put this before exit if you truly want to print the status code
exit $? # This will show the status code of the previous command which is this command test -e /bin/bash, although here the previous command is echo $?
# The status code in the terminal will be red here, because we saved $? in a variable and then exit uses that variable, so it ignores whether if echo ran successfully
test -e /bin/python
status=$?
echo $status
exit $status