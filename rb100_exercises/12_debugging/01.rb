def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

find_first_nonzero_among(0, 0, 1, 0, 2, 0)
find_first_nonzero_among(1)

=begin
Without running this code, I think the error that it will raise is
NoMethodError. Line 7 calls find_first_nonzero_among and passes in six integers
as arguments. However, within the method, each can only be called on a
collection. There is no such built-in method each for an integer. The same
problem is with line 8. [WRONG]
=end

=begin
CORRECTION
The actual error message is:
01.rb:1:in `find_first_nonzero_among': wrong number of arguments (given 6, expected 1) (ArgumentError)
	from 01.rb:7:in `<main>'

What actually happens is find_first_nonzero_among is defined to take one
argument, but six are passed to it as arguments on line 7.

NoMethodError is raised with line 8 though.
=end
