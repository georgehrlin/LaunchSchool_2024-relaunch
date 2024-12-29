a = 42
b = 42
c = a

puts a.object_id == b.object_id # My prediction: true
puts b.object_id == c.object_id # My prediction: true

puts a.object_id
puts b.object_id
puts c.object_id

=begin
In Ruby, each integer is a single immutable object. For instance, there can
only ever be one integer 1 object, one integer 2 object, and so on.

For performance reasons, true, false, and nil are also handled specially. For
instance, evey instance of true will have the same object id. This also has to
do with the immutability of true, false, and nil.
=end
