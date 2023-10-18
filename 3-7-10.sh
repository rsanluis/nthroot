#!/bin/bash

# a = base number in nth root equation
# p = to the power of
# n = nth root

for p in {0..21}; do
  n=$p
  a=$(echo "10^$p"|bc)
  printf "n=%2s nth root of (10^%2s=%28s) is " $n $p $a
  if [[ $p -eq 0 ]]
  then
    // https://github.com/rsanluis/nthroot/blob/main/0th_root_rules_when_x_is_1.png
    echo "1"
  else
    awk "BEGIN { print $a ** (1 / $n) }"
  fi
done
