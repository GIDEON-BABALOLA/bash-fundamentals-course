#!/bin/bash
# For Loops In BASH SCRIPT
# First Loop
for i in {1..5}
do
  echo $i
done

# Second Loop
for i in $(seq 1 5)
do
  echo $i
done 

# Third Loop
LENGHT=5
for i in $(seq 1 $LENGHT); do
    echo $i
done 

# Do While Loops In BASH SCRIPT
count=1
while [ $count -le 5 ]; do
  echo $count
  count=$(($count+1))
done

# Do while loops also allows for break and continue statements
secondCount=1
while [ $secondCount -le 5 ]; do
    echo $secondCount
    if [ $secondCount -gt 2 ];
      then
        break
    fi
    secondCount=$(($secondCount+1))
done

# The $@ variable is a list of command line arguments, from $1 to $9, Create a loop that loops over the arguments and prints them
for i in $@;
do
  echo $i
done

# if you run ./loops.sh 1 2 3, it will print 1 2 3 because $@ is a list of command line arguments

SUM=0
for i in $@; do
 SUM=$(($SUM+$i)) # This will sum uo the numbers
#  SUM=$SUM+$i # This will show 1 + 2 + 3 + 4 + 5 if the arguments are 0 1 2 3 4 5
done
echo $SUM