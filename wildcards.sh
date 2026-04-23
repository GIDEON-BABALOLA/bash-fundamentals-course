#!/bin/bash
# Globbing
ls *.sh # This directory
ls **/*.sh # Any other deeper directory
ls *.?sh # zsh, fsh, ash
ls *.??? # All three letter file extensions
ls **/*.?sh # zsh, fsh, ash in a deeper directory
ls **/*.??? # All three letter file extensions in a deeper directory
# * represents any file name 
ls [ec][na][vt].sh # cat.sh env.sh
ls *[a-z].sh # Everything but case2.sh or everything except the file names that end with a number
ls [2]*.sh # Every shell script that starts with the letter 2
ls [e]*.sh # Every shell script that starts with the letter e
ls *[a-z0-9].sh # Shell scripts that can end with alphabets or numbers
for file in *sh; do
  echo $file;
done