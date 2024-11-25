numbers = [5, 2, 9, 6, 3, 1, 8]

=begin
even_numbers = numbers.map do |n|
  n if n.even?
end

p even_numbers
=end

=begin
Array#map is used for transformation, not selection. In this case, we want to
use a method to select out the appropriate elements from an array. The correct
method to use is Array#select. When using select, we can simply only have
n.even? in the block.
=end

even_numbers = numbers.select do |n|
  n if n.even?
end

p even_numbers
