arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# arr.append(11)
# arr.prepend(0)

# Or:
arr.push(11)
arr.unshift(0)

p arr
# => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

arr.pop
arr.<<(3)

p arr
# => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 3]

arr.uniq!
p arr
# => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
