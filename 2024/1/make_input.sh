#!/bin/bash
INPUT=${1:-input}
paste -d' ' <(awk -F' ' '{print $1}' "$INPUT" | sort -n) <(awk -F' ' '{print $2}' "$INPUT" | sort -n)
