def mess_with_vars(one, two, three)
  one = 'two'
  two = 'three'
  three = 'one'
end

one = 'one'
two = 'two'
three = 'three'

mess_with_vars(one, two, three)

puts "one is: #{one}"     # Output: one is: one
puts "two is: #{two}"     # Output: two is: two
puts "three is: #{three}" # Output: three is: three
