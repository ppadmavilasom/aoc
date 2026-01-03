#!/bin/awk
# See https://adventofcode.com/2025/day/2 for puzzle description
BEGIN {
  FS="-"
}

function has_pattern(s) {
  l = length(s)
  # only look for duplicates like 11, 1212 etc
  # filter out 111 etc with odd lengths
  if ((l % 2) != 0) {
    return 0
  }
  # fold at the middle and look for symmetry
  h = l/2
  return substr(s, 1, h) == substr(s, h+1, h)
}

{
  last=$1+($2-$1)
  for(j=$1;j<=last;j++) {
    if (has_pattern(j)) {sum+=j}
  }
}

END {
  print sum
}
