#!/bin/bash
# Arrays
# my_array=("milk", "eggs", "champagne")
# echo ${my_array[0]}

array=("milk" "eggs" "champagne") # Array is a list without commas
leng=${#array[@]}
echo $leng
for (( i=0; i<${leng}; i++)); do
  echo ${array[$i]}
done