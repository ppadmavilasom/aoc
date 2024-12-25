#!/bin/awk
{
  k = patsplit($0, a, /mul\([0-9]{1,3},[0-9]{1,3}\)/)
  for (i = 1; i <= k; ++i) {
    print a[i]
  }
}
