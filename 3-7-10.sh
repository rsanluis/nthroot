#!/bin/bash

# a = base number in nth root equation
# p = to the power of
# n = nth root

for p in {0..21}; do
  n=$p
  a=$(echo "10^$p"|bc)
  printf "n=%2s nth root of (10^%2s=%28s) is " $n $p $a
  awk "BEGIN { print $a ** (1 / $n) }"
done
