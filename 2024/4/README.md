# Overview
Here is the [link to the problem](https://adventofcode.com/2024/day/4)

### Approach to solution
Given an input like the following,
```
XMAS
MM..
A.A.
S..S
```
For each line, for each `X` or `S` (they are the allowed starts)
- Look to right for a match - get a match XMAS, add 1  (substr call for length of match)
- Look straight down - get a match XMAS, add 1 (see function down)
- Look to left diagonal down - invalid (see function down_left)
- Look to right diagonal down - get a match XMAS, add 1 (see function down_right)

Total 3 for the example.

### Scalability concerns
Current solution does not consider scalability. If larger inputs are needed,
the solution should split input and process each, then combine.


## References
- [how to use](../1/README.md)
