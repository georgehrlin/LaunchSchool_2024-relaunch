# a method that takes an array of integers, and returns a new array with every
# other element from the original array, starting with the first element.

# For instance:
# every_other([1,4,7,2,5]) # => [1,7,5]

=begin
Informal Pseudo-Code

Given a collection of integers.

Initiate a result array that is an empty array.
Initiate a variable i that is 0 to keep track of index.

Iterate through the array:
  - Append number being iterated to result array if its index is even

Return result array.
=end

=begin
Formal Pseudo-Code

START

# Given an array of integers arr_int

SET result = []
SET i = 0

UNTIL i >= size of arr_int
  result << integer at index i
  i += 2

result

END
=end

def every_other(arr_int)
  result = []
  i = 0

  until i >= arr_int.size do
    result << arr_int[i]
    i += 2
  end

  result
end

p every_other([1,4,7,2,5]) # => [1,7,5]

# Solutions by Claude 3.5 Sonnet
def every_other1(arr_int)
  arr_int.select_with_index { |_, index| index.even?}
end

def every_other2(arr_int)
  arr_int.values_at(*(0..arr_int.size-1).step(2))
end
