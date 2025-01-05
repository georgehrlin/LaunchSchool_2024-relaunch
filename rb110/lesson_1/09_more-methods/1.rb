# Enumerable#all?

[1, 2, 3].all? do |num|
  num > 2
end
# => false

# all? only returns true if the block's return value in every iteration is
# truthy

{ a: 'ant', b: 'bear', c: 'cat' }.all? do |key, value|
  value.length >= 3
end
# => true
