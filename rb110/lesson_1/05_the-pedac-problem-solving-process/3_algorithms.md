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

### A: Algorithms
- A logical sequence of steps for accomplishing a task or objective
- Closely related to data strctures
- At first, keep your algorithm abstract and high-level
- Break down steps and fill in details as needed
- Don't worry about efficiency at this stage

1. Create am empty `rows` array to hold all of our rows
2. Create a `row` array and add it to the overall `rows` array
3. Repeat step 2 until all the necessary rows have been created
4. Sum the final row
5. Return the sum

### Subproblem: Step 2
Subproblem: Create a Row

Rules:
- Row is an array/list
- Array contains consecutive even numbers
- Integers in each row form part of a larger overall sequence
- Rows are of growing lengths

Input:
  - Length of the row
  - The starting integer
Output: The row itself (e.g., [8, 10, 12])

Examples:
- Start: 2, length: 1. --> [2]
- Start: 4, length: 4. --> [4, 6]
- Start: 8, length: 3. --> [8, 10, 12]

Data Structure: Array

Algorithm
- Create a variable result that points to an empty array
- Create a variable elements_num that points to 1
- Create a variable even_num that points to 2
- Creat a loop that iterates for input times
  - Create a variable subarray that points to an empty array
  - Create a loop that iterates until elements_num == input
    - For elements_num times
      - Append even_num to subarray
      - Increment even_num by 2
    - Increment elements_num by 1
  - Loop END
-Loop END
- Return result