# Flowchart

Using a flowchart helps us map out the logical sequence of a possible solution in a visual way.

The arrows in a flowchart show the "flow" of the logic, and that we're taking great pains specifically draw out the iteration logic. This helps us map out the step-by-step logic our program would need to solve the problem. This is called the *imperative* or *procedural* way to solve a problem.

In many higher level programming languages, basic concepts are encapsulated in a method. In Ruby, for instance, there is a handy `each` method that allows us to iterate over an array. Using `each` is the *declarative* way of solving a problem.

## A Larger Problem
Q: Let's suppose that in our larger problem we are asking the user to input N collections of numbers, and we want to take the largest number out of each collection and display it.

```
INFORMAL PSEUDO-CODE

While user wants to keep going
  - Ask the user for a collection of numbers
  - Extract the largest one from that collection and save it
  - Ask the user if they want to input another collection

Return saved list of numbers
```

```
INFORMAL PSEUDO-CODE with Sub-Processes

While user wants to keep going
  - Ask user for a collection of numbers
  - Iterate through collection one by one
    - Save first value as starting value
    - For each iteration, compare saved value with current value
    - If saved value is greater, or it's the same
      - Move to next value in collection
    - Otherwise, if current value is greater
      - Reassign saved value to current value

  - After iterating through collection, save largest value into list
  - Ask user if he wants to input another collection

Return saved list of numbers
```

```
FORMAL PSEUDO-CODE without Sub-Processes

START

SET large_numbers = []
SET keep_going = true

WHILE keep_going == true
  GET "enter a collection"
  SET collection
  SET largest_number = SUBPROCESS "extract the largest one from that collection"
  large_numbers.push(largest_number)
  GET "enter another collection?"
  IF "yes"
    keep_going = true
  ELSE
    keep_going = false

PRINT large_numbers

END
```
