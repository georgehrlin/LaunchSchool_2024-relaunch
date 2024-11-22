numbers = [5, 9, 21, 26, 39]

p divisible_by_three = numbers.select { |number| number % 3 == 0 }

=begin
NOTE
The main difference between map and select is the way the new element's value
is chosen:
map returns a new array with each element transformed based on the block's
return value.
select returns a new array containing elements selected only if the block's
return value evaluates as true.
=end
