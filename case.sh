#!/bin/bash
echo "y/n?"
read line
case "$line" in
     [yY] | [yY][eE][sS])
         echo "Yes"
         ;;
     [nN] | [nN][oO])
         echo "No"
         ;;
     *)
        echo "Please enter y or n"
        ;;
esac