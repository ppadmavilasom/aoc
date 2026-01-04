## Overview
Please see [advent of code 2025 day 3](https://adventofcode.com/2025/day/3). Needs login for puzzle inputs.

### How to run
Save the input file as `input`, then do `make` or `awk -f process.awk input`

### Algorithm used
To find the largest possible `n` digit number from sequence without re-arranging, consecutively find largest number in sub sequences with enough room left at the tail end and starting at the next index of the previous find.

#### Eg: 8192, 1 (Largest 1 digit in sequence)
Since single digit, no need to omit any at tail end. Just a straight digit by
digit comparison to find largest
Answer is 9


#### Eg: 8192, 2 (Largest 2 digit in sequence)
Since 2 digits are required, leave 1 (2-1) at tail end
Find largest digit from 819 (leaving 2 at tail) = 8, index 1
Find largest digit from 192 (Start at index 2 and take the rest) = 9
Answer is 89 ((8 * 10^1) + (9 * 10^0))

#### Eg: 8192, 3 (Largest 3 digit in sequence)
Since 3 digits are required, leave 2 (3-1) at tail end
Find largest digit from 81 (leaving 92 at tail) = 8, index 1
Find largest digit from 19 (leaving 2 at tail, Start at index 2 and take the rest) = 9, index 3
Find largest digit from 2 (Start at index 4, leave none) = 2
Answer is 892 ((8 * 10^2) + (9 * 10^1) + (2 * 10^0))
