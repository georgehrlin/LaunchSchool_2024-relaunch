# Enumerable#include?

[1, 2, 3].include?(1) # => true

# When called on a hash, include? ONLY checks the keys, NOT the values
{ a: 'ant', b: 'bear', c: 'cat' }.include?('ant') # => false
{ a: 'ant', b: 'bear', c: 'cat' }.include(:a)     # => true
# In fact, Hash#include? is essentially an alias for Hash#key? (or
# Hash#has_key?)
# To find out if a value is contained within a hash, use Hash#value? (or
# Hash#has_value?)

# Enumerable#member? is an alias