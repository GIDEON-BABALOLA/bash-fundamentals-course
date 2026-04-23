# !/bin/bash
# Project: seq
# seq is a command line tool on Linux. It's help page reads as follows:
# Usage: seq [OPTION]... LAST
# or:    seq [OPTION]... FIRST LAST
# or:    seq [OPTION]... FIRST INCREMENT LAST
# Print numbers from FIRST to LAST, in steps of INCREMENT
# So, seq can either accept either one, two or three command line arguments.
# Here are some examples of running seq
# seq 5
# 1
# 2
# 3
# 4
# 5
# seq 2 7
# 2
# 3
# 4
# 5
# 6
# 7
# seq 1 2 10
# 1
# 3
# 5
# 7
# 9
# Here you can see the differences in the single, double or triple arguments.
# Your goal is to re-create this tool in a simple Bash script.
# You should use:
# - Loops
# - Exit codes (non-zero if, for example, an argument is not a number)
# - Conditionals
# Good Luck.

 
test -e $1 
firstStatus=$? 
test -e $2
secondStatus=$?
test -e $3
thirdStatus=$?
(( total = firstStatus + secondStatus + thirdStatus ))
# if [ $total == 1 ];
# then
# count=1
#   while [ $count -le $1 ]; do
#   echo $count
#   (( count++ ))
# done
# fi

# if [ $total = 2 ];
# then
# count=$1
#   while [ $count -le $2 ]; do
#     echo $count
#     (( count++ ))
# done
# fi


# if [ $total = 3 ];
# then
# count=$1
#    while [ $count -le $3 ]; do
#     echo $count
#     count=$(($count+$2))
# done
# fi



case $total in
     1)
               count=1
               while [ $count -le $1 ]; do
               echo $count
               sleep 0.5
               (( count++ ))
               done
         ;;
      2)
                count=$1
                while [ $count -le $2 ]; do
                echo $count
                sleep 0.5
                (( count++ ))
                done
         ;;
      3)
                count=$1
                while [ $count -le $3 ]; do
                echo $count
                sleep 0.5
                count=$(($count+$2))
                done
         ;;
     *)
        exit 1
        ;;
esac

# if [ $firstStatus == 1 ];
# then
#    if [ $secondStatus == 0 ];
#       then
#         if [ $thirdStatus == 0 ];
#               then
#               count=1
#               while [ $count -le $1 ]; do
#                echo $count
#                sleep 0.5
#                (( count++ ))
#               done
#         fi
#    fi
# fi


# if [ $firstStatus == 1 ];
# then
#    if [ $secondStatus == 1 ];
#       then
#         if [ $thirdStatus == 0 ];
#               then
#                 count=$1
#                   while [ $count -le $2 ]; do
#                     echo $count
#                     sleep 0.5
#                     (( count++ ))
#               done
#         fi
#    fi
# fi


# if [ $firstStatus == 1 ];
# then
#    if [ $secondStatus == 1 ];
#       then
#         if [ $thirdStatus == 1 ];
#               then
#                 count=$1
#                    while [ $count -le $3 ]; do
#                     echo $count
#                     sleep 0.5
#                     count=$(($count+$2))
#               done
#         fi
#    fi
# fi
