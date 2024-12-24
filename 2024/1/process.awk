#!/bin/awk

function abs(in_num) {
  return in_num > 0 ? in_num : -in_num
}

{
  sum += abs($1 - $2)
}

END {
  print sum
}
