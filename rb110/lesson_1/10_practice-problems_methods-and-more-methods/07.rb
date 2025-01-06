p ([1, 2, 3].any? do |num|
  puts num
  num.odd?
end)

=begin
MY ANSWER:
This block's return value is a boolean value depending on whether the element
is an odd number. The return value of a block is determined by the return value
of its last expression.

The return value of any? in this code is:
=> true
The output is: [INCORRECT]
1
2
3
=end

=begin
CORRECT:
The only line that is output is 1. 2 and 3 are not output.

This is because "any? stops iterating after this point since there is no need
to evaluate the remaining items in the array; therefore, puts num is only ever
invoked for the first item in the array: 1".
=end
