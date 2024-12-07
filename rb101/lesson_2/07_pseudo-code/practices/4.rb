# a method that takes two arrays of numbers and returns the result of merging
# the arrays. The elements of the first array should become the elements at the
# even indexes of the returned array, while the elements of the second array
# should become the elements at the odd indexes. For instance:

# merge([1, 2, 3], [4, 5, 6]) # => [1, 4, 2, 5, 3, 6]

# You may assume that both array arguments have the same number of elements.

=begin
INFORMAL PSEUDO-CODE

Given two arrays of numbers.

Initiate a variable result with value an empty array.
Initiate a vairable i with value 0 to keep track of index number.

Iterate over first array of numbers:
  - Append number at index i in first array to result
  - Append number at index i in second array to result
  - i increments by 1

Return result
=end

=begin
FORMAL PSEUDO-CODE

START

# Given two arrays of numbers, arr1 and arr2

SET result = []
SET i = 0

UNTIL i == size of arr1
  result << arr1[i]
  result << arr2[i]
  i += 1

RETURN result

END
=end

def merge(arr1, arr2)
  result = []
  i = 0

  until i == arr1.size do
    result << arr1[i]
    result << arr2[i]
    i += 1
  end

  result
end

# Other Solutions by Claude 3.5 Sonnet
def merge1(arr1, arr2)
  arr1.zip(arr2).flatten
end

def merge2(arr1, arr2)
  result = []
  arr1.each_with_index do |num, idx|
    result << num << arr[idx]
  end
  result
end
