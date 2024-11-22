numbers = [1, 2, 3, 4, 5]

p doubled_numebrs = numbers.map { |number| number * 2 }

# NOTE: Array#map iterates over an array and returns a new array with each
# element transformed based on the block's return value.
