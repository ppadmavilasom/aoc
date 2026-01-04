#!/bin/awk
# See https://adventofcode.com/2025/day/3 for puzzle description

BEGIN {
  sum = 0
}

# find the largest single digit and the index where it was found
function find_largest(ss) {
  ll = length(ss)
  data["value"] = data["index"] = 0
  for (ii = 1; ii <= ll; ++ii) {
    digit = substr(ss, ii, 1)
    if (digit > data["value"]) {
      data["value"] = digit
      data["index"] = ii
    }
  }
  return (data["index"] * 10) + data["value"]
}

# split sequences and drive for result
function find_largest_n_digit_num(s, n) {
  l = length(s)
  i = 0
  num = 0
  while(--n >= 0) {
    result = find_largest(substr(s, i + 1, l - n - i))
    value = result % 10
    i += (result - value) / 10
    num += value * (10 ^ n)
  }
  return num
}

{
  # default digits to 2
  if (num_digits == 0) num_digits = 2
  sum += find_largest_n_digit_num($1, num_digits)
}

END {
  print sum
}
