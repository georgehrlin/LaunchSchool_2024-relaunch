# Enumerable#each_with_object

[1, 2, 3].each_with_object([]) do |num, array|
  array << num if num.odd?
end
# => [1, 3]

# Besides taking a block, each_with_object also takes a method argument. The
# method argument is a collection object that will be returned by the method.
# On top of that, the block takes two arguments of its own. The first block
# argument represents the current element, and the second block argument
# represents the collection object that was passed in as an argument to the
# method. Once it's done iterating, the method returns the collection object
# that was passed in.

{ a: 'ant', b: 'bear', c: 'cat' }.each_with_object([]) do |pair, array|
  array << pair.last
end
# => ["ant", "bear", "cat"]

# It's possible to capture the key and value in the first block argument by
# using parentheses
{ a: 'ant', b: 'bear', c: 'cat' }.each_with_object({}) do |(key, value), hash|
  hash[value] = key
end
# => {"ant"=>:a, "bear"=>:b, "cat"=>:c}
