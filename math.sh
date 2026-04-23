# !/bin/bash
# Doing maths in bash is weird, What makes it weird
# (()) Arithmetic Evaluation
# $(()) Arithmetic Expansion
# It supports +, -, *, /, %, **

# outdated ways to do bash maths
let "total = 100 + 50"
echo $total
expr 5 + 3

(( count = 5 + 3 ))
echo $count

echo $(( count * 2 ))

seconds=10
while (( seconds > 0)); do
  echo "Starting in $seconds..."
  (( seconds-- ))
  sleep 1
done

echo "Go!"