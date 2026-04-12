#!/bin/bash
read -p "Yes? y/n: " YES
if [ $YES = "y" ]
then
  echo "you chose yes"
elif [ $YES = "n" ]
then 
  echo "you chose no"
else
  echo "wrong input"
fi

if [ $YES = "y" ]; then
  echo "you chose yes"
elif [ $YES = "n" ]; then 
  echo "you chose no"
else
  echo "wrong input"
fi