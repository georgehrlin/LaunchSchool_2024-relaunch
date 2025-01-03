## Main Question
Imagine a sequence of consecutive even integers beginning with 2. The integers are grouped in rows, with the first row containing one integer, the second containing two integers, the third row three integers, and so on. Given an integer representing the numebr of a particular row, return an integer representing the sum of all the integer in that row.

### P: Understand the Problem
- Input: Integer representing the number of a particular row
- Output: Integer representing the sum of all integers in that row

- Explicit:
  - Sequence of consecutive even integers that begins with 2
  - Sequence is grouped into rows of growing sizes, with first one containing 1 integer

- Implicit:
  - Row one has 1 element, row two has 2 elements, and so on

- Sequence:
  2
  4  6
  8  10 12
  14 16 18 20
  22 24 26 28 30

### E: Examples and Test Cases
- Can be used to confirm or refute assumptions
- Answer questions and provide implicit requirements
- Test cases are written in code and can be run to test your solution
- Codify the rules and boundaries of the problem

Row number: 1 -> Sum of integers in row: 2
Row number: 2 -> Sum of integers in row: 10
Row number: 4 -> Sum of integers in row: 68

### D: Data Structures
- Thinking in terms of data structure is an important part of the problem solving process
- Helps reason with data logically
- Helps interact with data at the implementation stage
- Data strcutures are closely linked to the algorithm used for your solution

- Sequence of rows
- Order of rows is important
- Rows contain integers
- Order of integers is important

[
  [2],
  [4, 6],
  [8, 10, 12],
  [14, 16, 18, 20],
  ...
]