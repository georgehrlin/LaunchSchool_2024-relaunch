sun = ['visible', 'hidden'].sample

puts 'The sun is so bright!' if sun == 'visible'
puts 'The clouds are blocking the sun!' unless sun == 'visible'

=begin
The latter portions of line 3 and 4:

if sun == 'viisble'
unless sun == 'visible'

are called statement modifiers.
=end
