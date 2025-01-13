def remove_evens!(arr)
  arr.each do |num|
    if num % 2 == 0
      arr.delete(num)
    end
  end
  arr
end

p remove_evens!([1, 1, 2, 3, 4, 6, 8, 9])
# Expected return: [1, 1, 3, 9]
# Actual return: [1, 1, 3, 6, 9]

# "One way to fix the code above is to create a shallow copy of the array and
# iterate through it while mutating the original array:"
def remove_evens!(arr)
  cloned_arr = arr.dup
  cloned_arr.each do |num|
    if num % 2 == 0
      arr.delete(num)
    end
  end
  arr
end
