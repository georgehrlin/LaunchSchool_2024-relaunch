['ant', 'bear', 'caterpillar'].pop.size

=begin
My answer:
=> 11
pop mutates the caller array by removing and returning its last element, so
"caterpillar" is returned first. Then, size is called on "caterpillar", which
returns the number of characters it the caller string, so 11 is returned.
=end
