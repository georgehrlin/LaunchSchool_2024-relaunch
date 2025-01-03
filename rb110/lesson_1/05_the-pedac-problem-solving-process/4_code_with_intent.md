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
   - All the rows have been created when the length of the rows array is equal to the input
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
- 1. Create an empty row array to contain the integers
- 2. Add the starting integer
- 3. Increment the starting integer by 2 to get the next integer in the sequence
- 4. Repeat steps 2 & 3 until the array reaches the correct length
- 5. Return row array

### C: Implementing a Solution in Code
- Translating your solution algorithm into code
- Think about your solution algorithm in the context of the programming language
  - Features and constraints of the language
  - Characteristics of data structures
  - Built-in methods that are available
  - Syntax and general patterns of the language
- Create additional implementation notes if necessary
- Create any test cases needed
- Code with intent

## Final Thoughts
- PEDAC is not a completely linear process
- Move back and forth between the steps as needed
- Refer back to your notes when necessary
- Switch from implementation to abstract problem-solving mode when necessary
- Don't try to solve the problem at the code level
- Your approach will likely evolve over time
