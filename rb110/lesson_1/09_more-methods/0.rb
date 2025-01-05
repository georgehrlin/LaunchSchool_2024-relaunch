# Enumerable#any?

[1, 2, 3].any? do |num|
  num > 2
end
# => true
# any? return true if the block returns a truthy value for any element in the
# caller collection.

{ a: "ant", b: "bear", c: "cat" }.any? do |key, value|
  value.size > 4
end
# => false

[nil, false, 0].any?(Numeric) # => true
[nil, false, 0].any?(Float)   # => false
