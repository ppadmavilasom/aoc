#!/bin/awk
{
  do_not = "don't()"
  do_do = "do()"

  k = patsplit($0, a, /mul\([0-9]{1,3},[0-9]{1,3}\)|don't\(\)|do\(\)/)
  for (i = 1; i <= k; ++i) {
    if (a[i] == do_not) {
      skip = 1
      continue
    } else if (a[i] == do_do) {
      skip = 0
      continue
    }
    if (skip) continue
    print a[i]
  }
}
