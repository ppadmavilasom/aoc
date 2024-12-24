#!/bin/bash
INPUT=${1:-input}
awk -F' ' '{print $2}' "$INPUT" | sort -n | uniq -c
