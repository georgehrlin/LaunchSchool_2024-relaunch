name = 'Roger'

puts name.downcase == 'RoGeR'.downcase

puts name.downcase == 'DAVE'.downcase

puts name.casecmp?('RoGeR')

puts name.casecmp?('DAVE')

# Official Answer
puts name.casecmp('RoGeR') == 0
puts name.casecmp('DAVE') == 0

# From Bob Rodes
=begin
If you're doing a case-insensitive comparison of two strings, the string that
comes first in alphabetical order is "less than" the other, and the string that
comes second is "more than" the other.

However, if you get into case sensitivity, things get a lot more complicated,
because every capital letter is "less than" every lower-case letter.
=end
