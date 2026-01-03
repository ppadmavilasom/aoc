#!/bin/awk
# part 2 of puzzle 2
# See https://adventofcode.com/2025/day/2#part2 for puzzle description
BEGIN {
  FS="-"
}

# uses KMP algorith for pattern search
# does O(n) complexity
function lps_last_val(s) {
  n = length(s)
  l = 0 
  for(i = 0; i < n; i++) lps[i] = 0
  i = 1
  while(i <= n) {
    # awk arrays are 1 based.
    if (substr(s, l+1, 1) == substr(s, i+1, 1)) lps[i++] = ++l
    else if (l != 0) l = lps[l-1]
    else lps[i++] = 0
  }
  return lps[n-1]
}

function has_pattern(s) {
  if (s == "") return 0
  n = length(s)
  last_lps = lps_last_val(s)
  unit_len = n - last_lps
  return last_lps > 0 && (n % unit_len) == 0
}

{
  last=$1+($2-$1)
  for(j=$1;j<=last;j++) {
    if (has_pattern(j)) sum+=j
  }
}

END {
  print sum
}
