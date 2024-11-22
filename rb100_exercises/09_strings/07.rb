=begin
greeting = 'Hello!'
greeting.gsub!('Hello', 'Goodbye')
puts greeting

greeting = 'Hello!'
greeting.replace('Goodbye!')
puts greeting

greeting = 'Hello!'
greeting.sub!('Hello', 'Goodbye')
puts greeting

greeting = 'Hello!Hello!'
puts greeting
greeting.sub!('Hello', 'Goodbye')
puts greeting
=end

greeting = 'Hello!'
greeting[0..3] = 'Goodbye!'
puts greeting
