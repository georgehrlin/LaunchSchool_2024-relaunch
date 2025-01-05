arr = [1, 2, 3, 4]
p arr.object_id
p (arr.select { |n| true }.object_id)
