colors = 'blue pink yellow orange'

puts colors.split(' ').include?('yellow')
puts colors.split(' ').include?('purple')

puts colors.include?('yellow')
puts colors.include?('purple')

# Further Exploration
colors = 'blue boredom yellow'
puts colors.include?('red')
# Output: true
# The calling string, 'blue boredom yellow', does include a substring, 'red',
# so line 11 prints true.
