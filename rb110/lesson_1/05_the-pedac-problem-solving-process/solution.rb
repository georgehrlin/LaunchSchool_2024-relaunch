=begin
1. Create am empty `rows` array to hold all of our rows
2. Create a `row` array and add it to the overall `rows` array
3. Repeat step 2 until all the necessary rows have been created
   - All the rows have been created when the length of the rows array is equal to the input
4. Sum the final row
5. Return the sum
=end

def sum_even_number_row(row_number)
  rows = []
  start_integer = 2

  (1..row_number).each do |current_row_number|
    row = create_row(start_integer, current_row_number)
    rows << row
    start_integer = row[-1] + 2 # Or: rows.last.last + 2
  end

  rows[-1].sum # Or: rows.last.sum
end

=begin
- 1. Create an empty row array to contain the integers
- 2. Add the starting integer
- 3. Increment the starting integer by 2 to get the next integer in the sequence
- 4. Repeat steps 2 & 3 until the array reaches the correct length
- 5. Return row array
=end

=begin
Start the loop
  - Add start_integer to row
  - Increment start_integer by 2
  - Break out of loop if length of rwo equals row_length
=end

def create_row(start_integer, row_length)
  row = []
  current_integer = start_integer

  loop do
    row << current_integer
    current_integer += 2
    break if row.length == row_length
  end

  row
end

=begin
Row number: 1 -> Sum of integers in row: 2
Row number: 2 -> Sum of integers in row: 10
Row number: 4 -> Sum of integers in row: 68
=end

p sum_even_number_row(1) == 2
p sum_even_number_row(2) == 10
p sum_even_number_row(4) == 68

=begin
- Start: 2, length: 1. --> [2]
- Start: 4, length: 4. --> [4, 6]
- Start: 8, length: 3. --> [8, 10, 12]
=end

=begin
p create_row(2, 1) == [2]
p create_row(4, 2) == [4, 6]
p create_row(8, 3) == [8, 10 ,12]
=end