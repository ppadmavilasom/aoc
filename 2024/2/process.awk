#!/bin/awk

function get_index(n, i, reverse) {
  return reverse ? n - i + 1 : i
}

function check(n, a) {
  reverse = a[n] < a[1]
  for (i = 1; i < n; ++i) {
    ai = get_index(n, i, reverse)
    ai_next = get_index(n, i+1, reverse)
    diff = a[ai_next] - a[ai]
    if (diff > 3 || diff < 1) return 0
  }
  return 1
}

{
  n = split($0, a, " ")
  sum += check(n, a)
}

END {
  print sum
}
