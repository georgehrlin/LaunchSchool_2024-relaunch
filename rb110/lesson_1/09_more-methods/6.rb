# Enumerable#partition

[1, 2, 3].partition do |num|
  num.odd?
end
# => [[1, 3], [2]]

# The most idiomatic way to use partition is to parallel assign variables to
# capture the divided inner arrays:
odd, even = [1, 2, 3].partition do |num|
  num.odd?
end

p odd  # => [1, 3]
p even # => [2]

# Even if the collection is a hash, the return value of partition will always
# be an array
{ a: 'ant', b: 'bear', c: 'cat' }.partition do |key, value|
  value.size > 3
end
# => [[[:b, "bear"]], [[:a, "ant"], [:c, "cat"]]]

long, short = { a: 'ant', b: 'bear', c: 'cat' }.partition do |key, value|
  value.size > 3
end

p long  # => [[:b, "bear"]]
p short # => [[:a, "ant"], [:c, "cat"]]
