#!/bin/awk

BEGIN {
  str1="MAS"
  str2="SAM"
  strlen=3
  linelen=0
  count=0
}

function down_left(i, j,  k,  l,  local_cand) {
  l = 0
  local_cand = ""
  for(k=i; k < i+strlen && j - l > 0; ++k) {
    local_cand = sprintf("%s%s", local_cand , substr(a[k], j - l, 1))
    ++l
  }
  return local_cand
}

function down_right(i, j,  k,  l,  local_cand) {
  l = 0
  local_cand = ""
  for(k=i; k < i+strlen && j + l <= linelen; ++k) {
    local_cand = sprintf("%s%s", local_cand , substr(a[k], j + l, 1))
    ++l
  }
  return local_cand
}

function check(i, j,  local_count) {
    local_count = 0
    # check down left diag
    cand = down_right(i, j)
    if (cand == str1 || cand == str2) local_count++
    # check down right diag
    cand = down_left(i, j + 2)
    if (cand == str1 || cand == str2) local_count++
    return local_count == 2
}

function find(i,  start) {
  for(j = 1; j < linelen-1; ++j) {
    start = substr(a[i], j, 1)
    if (start != "M" && start != "S") continue
    start = substr(a[i], j+2, 1)
    if (start != "M" && start != "S") continue
    count += check(i, j)
  }
}

{
  a[NR]=$0
}

END {
  linelen = length(a[1])
  for (i = 1; i <= NR; ++i) {
    find(i)
  }
  print count
}
