# p ['arc', 'bat', 'cape', 'ants', 'cap'].sort
=begin
A:
# => ['ants', 'arc', 'bat', 'cap', 'cape']
CORRECT!
=end

# p [['a', 'cat', 'b', 'c'], ['b', 2], ['a', 'car', 'd', 3], ['a', 'car', 'd']].sort
=begin
A:
# => [['a', 'car', 'd'], ['a', 'car', 'd', 3], ['a', 'cat', 'b', 'c'], ['b', 2]]
CORRECT!
=end

=begin
people = { Kate: 27, John: 25, Mike: 18 }
p people.sort_by { |_, age| age } # => [[:Mike, 18], [:John, 25], [:Kate, 27]]
=end

people = { Kate: 27, john: 25, Mike: 18 }
p people.sort_by { |name, _| name.capitalize }