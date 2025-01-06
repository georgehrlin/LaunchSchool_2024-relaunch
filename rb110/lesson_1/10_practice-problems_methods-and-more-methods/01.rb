p ([1, 2, 3].select do |num|
  num > 5
  'hi'
end)

# My answer:
# => [1, 2, 3]
# select returns a new array with elements for which the block returns a truthy
# value. In this code, the last expression of the block is 'hi', which is
# truthy. Therefore, every element of the original array is included in the
# returned array.
