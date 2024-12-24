## Overview
Here is the [link to the problem](https://adventofcode.com/2024/day/1)

### Tools required
This solution uses the following programs that are standard in most linux distros. Ideally, you will not need to install anything extra to use this solution.
- awk
- bash
- make
- paste

### How to try
Copy the example input to file named `sample.1`
It should look like this
```
3   4
4   3
2   5
1   3
3   9
3   3
```

According to the problem description, this sample should return 11 as the result.

To try using the sample as input, do
```
$ make INPUT=sample.1
11
```

Please note that this solution uses a temporary file. See [make_input.sh](./make_input.sh). Therefore, it is a good idea to clean temporary files when you change input. For eg. you could be working with the sample file, then you decide to try the puzzle input.
It is better to use the `clean` target in the `make` command like `make clean 1` or `make INPUT=sample.1 clean 1``

To try using the real input, first copy the input file as `input` to this folder. Then, try `make clean 1`
