#!/usr/bin/env bash

# a = base number in nth root equation
# p = to the power of
# n = nth root

a=10
n=3

for p in {0..21}; do
  y=$(echo "$a^$p"|bc)
  printf "n=%2s nth root of (%2s^%2s=%28s) is " $n $a $p $y
  val=$(awk "BEGIN { printf \"%.2f\n\", ($y ** (1 / $n)) }" | sed 's/\.00$//g')
  echo $val
done

