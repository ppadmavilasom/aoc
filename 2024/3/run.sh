#!/bin/sh
INPUT=${1:-input}
AWK_FILE=${2:-process.awk}

# transform to lines with mul(x,y)
# then sed them to mul() and retain x,y
# then process line by line with awk using a "," delimiter to do sum of x * y
awk -f "$AWK_FILE" "$INPUT" | sed 's|mul(||;s|)||' | awk -F',' '{s+=$1*$2};END{print s}'
