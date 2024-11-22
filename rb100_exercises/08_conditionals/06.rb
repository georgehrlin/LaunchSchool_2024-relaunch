stoplight = ['green', 'yellow', 'red'].sample

=begin
case stoplight
when 'green'
  puts 'Go!'
when 'yellow'
  puts 'Slow down!'
when 'red'
  puts 'Stop!'
end
=end

=begin
case
when stoplight == 'green'
  puts 'Go!'
when stoplight == 'yellow'
  puts 'Slow down!'
when stoplight =='red'
  puts 'Stop!'
end
=end

# NOTE: case statements are typically used when comparing multiple values to a
# single case.

# From Elaine Vuong
case stoplight
when 'green' then puts 'Go!'
when 'yellow' then puts 'Slow down!'
when 'red' then puts 'Stop!'
end
