arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]

arr.sort
# => [['1', '8', '11'], ['1', '8', '9'], ['2', '12', '15'], ['2', '6', '13']]
# The inner array elements are strings, so arr is sorted based on the
# characters' ordering in ASCII

# My attempt to sort this array based on the inner array elements' numeric
# values without looking at the solution:
sorted_arr = arr.sort_by do |subarr|
  subarr.map do |num|
    num.to_i
  end
end

p sorted_arr
# => [["1", "8", "9"], ["1", "8", "11"], ["2", "6", "13"], ["2", "12", "15"]]
