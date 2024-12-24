#!/bin/awk

{
  if (NR == FNR) {
    reps[$2] = $1
  } else {
    sum += ($1 * reps[$1])
  }
}

END {
  print sum
}
