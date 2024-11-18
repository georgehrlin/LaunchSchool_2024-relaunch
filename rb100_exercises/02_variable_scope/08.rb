array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
# This raises a `NameError` because line 7, which is in the outer block, has no
# access to variable `a`, which is initialized on line 4 and within a block.
