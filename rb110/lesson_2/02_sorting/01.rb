=begin
# Original array with nested array
original = [1, [2, 3]]
shallow_copy = original.dup  # Creates shallow copy

# Modifying nested array affects both
shallow_copy[1][0] = 99
puts original.inspect      # => [1, [99, 3]]
puts shallow_copy.inspect  # => [1, [99, 3]]

# Modifying top level only affects the copy
shallow_copy[0] = 100
puts original.inspect      # => [1, [99, 3]]
puts shallow_copy.inspect  # => [100, [99, 3]]
=end

arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.reverse!

p arr1
p arr2

=begin
arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2[2].capitalize!

p arr1
p arr2
=end