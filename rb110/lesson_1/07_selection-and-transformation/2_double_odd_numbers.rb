require 'pry'

def double_odd_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if current_number.odd?
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end

# Exercise for the reader: What if we wanted to transform the numbers based on
# their position in the array rather than their value? Try coding a solution
# that doubles the numbers that have odd indices

def double_numbers_with_odd_indices(numbers)
  doubled_numbers = []
  idx = 0

  loop do
    break if idx == numbers.size
    current_number = numbers[idx]
    #binding.pry
    current_number *= 2 if idx.odd?
    doubled_numbers << current_number

    idx += 1
  end

  doubled_numbers
end

numbers1 = [1, 4, 3, 7, 2, 6]

p double_numbers_with_odd_indices(numbers1)
