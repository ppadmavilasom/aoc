#!/bin/awk
# See https://adventofcode.com/2025/day/3 for puzzle description

BEGIN {
  sum = 0
}

function find_largest_2_digit_num(s) {
  l = length(s)
  i = 1
  largest = 0
  while(i < l) {
    val = substr(s, i++, 1) * 10
    j = i
    while(j <= l) {
      new = val + substr(s, j++, 1)
      if (new > largest) largest = new
    }
  }
  return largest
}

{
  sum += find_largest_2_digit_num($1)
}

END {
  print sum
}
