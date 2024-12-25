#!/bin/awk

function get_index(n, i, reverse) {
  return reverse ? n - i + 1 : i
}

function check(n, a, reverse) {
  for (i = 1; i < n; ++i) {
    ai = get_index(n, i, reverse)
    ai_next = get_index(n, i+1, reverse)
    diff = a[ai_next] - a[ai]
    if (diff > 3 || diff < 1) {
      return -1 * ai 
    }
  }
  return 1
}

function skip_check(s, a, b, reverse) {
    j = 1
    for (i = 1; i <= n; ++i) {
      if (i == s) continue
      b[j++] = a[i]
    }
    return check(n-1, b, reverse) > 0
}

{
  n = split($0, a, " ")
  reverse = a[n] < a[1]
  r = check(n, a, reverse)
  if (r > 0) {
    sum++
  } else {
    s = -1 * r
    if (skip_check(s, a, b, reverse)) {
      sum++
    } else {
      reverse ? s-- : s++
      if (skip_check(s, a, b, reverse)) sum++
    }
  }
}

END {
  print sum
}
