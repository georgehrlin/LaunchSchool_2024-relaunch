arr = ['Dave', 7, 'Miranda', 3, 'Jason', 11]

result = []

until arr.empty?
  sub_arr = []
  2.times { sub_arr << arr.shift } # Or: sub_arr << arr.shfit(2)
  result << sub_arr
end

p result # => [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

# Note on line 7 is from Leslie Hawk.
