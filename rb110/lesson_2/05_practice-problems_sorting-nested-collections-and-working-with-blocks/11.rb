arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

p arr.map { |subarr| subarr.select { |num| num % 3 == 0 } }
p arr.map { |subarr| subarr.reject { |num| num % 3 != 0 } }
