# aoc
Advent of code attempts. See [advent of code](https://adventofcode.com)

## Overview
`awk` seems like a really good fit to solve advent of code problems.
Hence, the solutions here are all done using `awk`.

advent of code has 2 problems with one data set. the second problem usuallys extends on the first.
`make` is used to organize and run the solutions.

### Code organiation

Top level folders will represent years like `2023`, `2024` etc

Under a year, expect the following files
```
2024
└── 1
    ├── input
    ├── Makefile
    ├── process2.awk
    ├── process.awk
    ├── sample.1
    └── sample.2

2 directories, 6 files

```

- input is the input file from aoc for the specific problem. Usually both problems have the same input
- Makefile has targets and other bookkeeping to solve problems.
  - `make` or `make 1` will solve the first problem and output the answer
  - `make 2` will solve the second problem and output the answer
- process.awk is optional. if present, it will have the code for solving the first part of the problem
- process2.awk is optional. if present, it will have code to solve the second part of the problem.
- sample.1 usually contains input file to check the sample solution from the aoc problem description
- sample.2 usually contains input file to check the second part of the solution

### How to use
It is best if you find the problem in [advent of code](https://adventofcode.com/2024/day/1) first.
Then, to check, copy the sample file as `sample.1` and run `make INPUT=sample.1`
Once you understand how the solution works, download the input (this could be different based on your login to the site)
as `input` and run `make` or `make 1`
Input the answer on advent of code site to verify.

When you read and understand the second part of the problem and the solution, you can try `make 2` and verify.

### why are awk files optional
  sometimes, the problems can be solved with tools like grep or a one line awk which becomes part of make.
  therefore, awk files might be optional
