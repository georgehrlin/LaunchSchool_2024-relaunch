array1 = [1, 5, 9]
array2 = [1, 9, 5]

p array1 == array2

# From Therese Stokkan
p array1.equal?(array2)

# From russenoire
p array1.eql?(array2)

=begin
NOTE on Array#== and Array#eql?

arr1 = [1, 2, 3]
arr2 = [1,0, 2.0, 3.0]

arr1 == arr2    # => true
arr1.eql?(arr2) # => false

== performs type conversion, whereas eql? performs strict type comparison.
=end

=begin
NOTE on BasicObject#equal?

a = "zen"
b = "zen"
a.equal?(b) # => false (different objects)

b = a
a.equal?(b) # => true (same objects)

equal? checks for the strictest form of equality, effectively performing
pointer comparison. It checks if two variables reference exactly the same
object (same object_id).
=end
