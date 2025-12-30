#!/bin/awk
# See https://adventofcode.com/2025/day/1 for puzzle description

function abs(v) {
  return v < 0 ? -v : v
}

BEGIN {
  start_pos = 50
  ring_length = 100
  count_of_zeroes = 0
}

{
  dir = substr($1, 1, 1)
  mag = substr($1, 2)

  mul = 1
  if (dir == "L") mul = -1
  start_pos += (mul * mag)
  if (abs(start_pos) % ring_length == 0) {
    start_pos = 0
    count_of_zeroes++
  }
}

END {
  print count_of_zeroes
}
