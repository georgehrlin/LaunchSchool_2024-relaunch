# Enumerable#first

p [1, 2, 3].first    # => 1
p [1, 2, 3].first(2) # => [1, 2]

{foo: 1, bar: 1, bar: 2}.first    # => [:foo, 1]
{foo: 1, bar: 1, bar: 2}.first(2) # => [[:foo, 1], [:bar, 1]]
# Calling first on a hash doesn't quite make sense because hashes are typically
# thought of as unordered. Their values are supposed to be retrieved with keys.
# Since Ruby 1.9 though, the order of hashes is preserved according to the
# order of insertion.
