arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

p arr.map { |subarr| subarr.sort { |a, b| b <=> a } }

# Or (after consulting Claude 3.5):
p arr.map { |subarr| subarr.sort.reverse }
