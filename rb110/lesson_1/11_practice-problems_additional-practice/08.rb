numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

=begin
ANSWER:
Output:
1
3

Explanation:
In the first iteration, 1 is output on line 3, then line 4 removes 1 from the
array, so now 2 is the first element and 3 the second element.
In the second iteration, because 3 is now the second element, 3 becomes the
element being iterated. Then, 3 is output on line 3, and line 4 removes 2 from
the array, making 3 the first element and 4 the second element. Iteration ends
here because there isn't a third element.
Therefore, only 1 and 3 are output.
=end

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

=begin
ANSWER:
Output:
1
2

Explanation:
In the first iteration, 1 is output on line 3, then line 4 removes 4 from the
array.
In the second iteration, 2 is output on line 3, then line 4 removes 3 from the
array. Iteration ends here because there isn't a third element to iterate on as
the array now only has two elements.
=end

numbers = [1, 2, 3, 4]
numbers.each_with_index do |number, index|
  p "Before shift, beginning of loop: #{index} #{numbers.inspect} #{number}"
  numbers.shift
  p "After shift, end of loop: #{index} #{numbers.inspect} #{number}"
end

numbers = [1, 2, 3, 4]
numbers.each_with_index do |number, index|
  p "Before shift, beginning of loop: #{index} #{numbers.inspect} #{number}"
  numbers.pop
  p "After shift, end of loop: #{index} #{numbers.inspect} #{number}"
end

=begin
The numbers array is being changed as the iteration happens. The loop counter
used by each is actually compared against the current length of the array
rather than its original length.

In both cases the iterators do not work on a copy of the original array or from
stale meta-data (length) of the array. The iterators operate on the ORIGINAL
array in REAL TIME.
=end
