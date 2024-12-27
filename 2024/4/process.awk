#!/bin/awk

BEGIN {
  str1="XMAS"
  str2="SAMX"
  strlen=4
  linelen=0
  count=0
}

function down_left(i, j,  k,  l,  local_cand) {
  l = 0
  local_cand = ""
  for(k=i; k < i+4 && j - l > 0; ++k) {
    local_cand = sprintf("%s%s", local_cand , substr(a[k], j - l, 1))
    ++l
  }
  return local_cand
}

function down_right(i, j,  k,  l,  local_cand) {
  l = 0
  local_cand = ""
  for(k=i; k < i+4 && j + l <= linelen; ++k) {
    local_cand = sprintf("%s%s", local_cand , substr(a[k], j + l, 1))
    ++l
  }
  return local_cand
}

function down(i, j,  k,  l,  local_cand) {
  local_cand = ""
  for(k=i; k < i+4 && k <= NR; ++k) {
    local_cand = sprintf("%s%s", local_cand , substr(a[k], j, 1))
  }
  return local_cand
}

function check(i, j,  local_count) {
    local_count = 0
    cand = substr(a[i], j, strlen)
    # check ahead in row
    if (cand == str1 || cand == str2) local_count++
    # check down left diag
    cand = down_left(i, j)
    if (cand == str1 || cand == str2) local_count++
    # check down right diag
    cand = down_right(i, j)
    if (cand == str1 || cand == str2) local_count++
    # check down
    cand = down(i, j)
    if (cand == str1 || cand == str2) local_count++
    return local_count
}

function find(i,  start) {
  for(j = 1; j <= linelen; ++j) {
    start = substr(a[i], j, 1)
    if (start != "X" && start != "S") continue
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
