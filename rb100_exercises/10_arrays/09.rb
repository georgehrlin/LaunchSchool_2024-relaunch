favourites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

p favourites.flatten

# Or:
arr = []
favourites.each { |sub| sub.each { |i| arr << i } }
p arr
