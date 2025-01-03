# P: Understand the Problem
- Establish rules and define boundaries of problem
- Restate problem in your own words
- Identify problem requirements:
  - Explicit
  - Implicit
- Identify inputs and outputs
- Ask questions/identify unclear information
- Spend enough time here. Don't rush

## Example Question 1
Given a string, produce a new string with every other word removed.

- Explicit requirements:
  - Input: A string
  - Output: A new string with every other word from input string removed

- Questions:
  - What do we mean by "every other word"?
  - What is a word in this context?
  - Should we delete all the odd words or even words?

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