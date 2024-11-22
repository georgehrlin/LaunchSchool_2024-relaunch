numbers = {
  high:   100,
  medium: 50,
  low:    10
}

p low_numbers = numbers.select { |k, v| v < 25 }

=begin
NOTE

Hash#map does not exist. However, Enumerable#map does and it can be called on
hashes. Enumerable#map returns a new array.

Hash#select, on the other hand, does exist and returns a new hash.
=end

# From Ryan Parkerson
low_numbers = numbers.select { |_, value| value < 25 }
# "It is a convention in Ruby to use _ as a variable name when you do not plan
# to use that variable later on." - spickermann, stackoverflow

# "Prefix with _ unused block parameters and local variables. It's also
# acceptable to use just _ (although it's a bit less descriptive)."
# - Ruby Style Guide
