stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'  then puts 'Go!'
when 'yellow' then puts 'Slowdown!'
when 'red'    then puts 'Stop!'
end

# Official Answer
case stoplight
when 'green'  then puts 'Go!'
when 'yellow' then puts 'Slowdown!'
else               puts 'Stop!'
end

# NOTE
# If there are multiple statements in the when clauses, put them on separate
# lines:
case stoplight
when 'green'
  puts 'Go!'
  accelerate
when 'yellow'
  puts 'Slow down!'
  decelerate
else
  puts 'Stop!'
  stop
end
