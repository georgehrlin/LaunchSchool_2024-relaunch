arr = [1, 4, 6, 9, 10, 15, 17]

arr_new = arr.map { |n| n + 2 }

p arr
p arr_new

# Or:
arr_another = []

arr.each { |n| arr_another << n + 2 }

p arr_another
