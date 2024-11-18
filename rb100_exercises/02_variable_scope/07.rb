a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a 
# Output: 3

=begin
`each` is called on line 4 on `array`, which iterates through its elements and
assigns each to `element`. Then, on line 5, the local variable `a` is
reassigned to the object that `element` points to in each iteration. Therefore,
`a` is reassigned to `3` in the end and hence that is the final output.
=end
