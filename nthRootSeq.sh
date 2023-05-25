#!/usr/bin/env bash

# a = base number in nth root equation
# p = to the power of
# n = nth root

for a in {0..21}; do
  for p in {0..21}; do
    for n in {1..21}; do
      val=$(echo "$a^$p"|bc)
      printf "n=%2s nth root of (%2s^%2s=%28s) is " $n $a $p $val 
      awk "BEGIN { print $val ** (1 / $n) }" 
    done
  done
done  
