hash = { a: 'ant', b: 'bear' }
p hash.shift
p hash

=begin
My answer:
Based on what I know about shift, it mutates the caller array/hash by removing
and returning its first element/key-value pair. We can find out by passing
hash.shfit to p on line 2, and calling p with hash on line 3.
=end
