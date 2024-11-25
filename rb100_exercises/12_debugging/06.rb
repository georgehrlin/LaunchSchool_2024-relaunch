def get_quote(person)
  if person == 'Yoda'
    'Do. Or do not. There is no try.'
  end

  if person == 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  end

  if person == 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'

=begin
After reading only the first hint, I realized that the problem with this code
is: When 'Confucius' is given to the method as argument, the last if clause on
line 10 ends up being the last executed line of code in the method get_quote.
Therefore, the method returns nil, and the concatenation operators on line 16
cannot be provided nil as argument, raising the exception.
=end

=begin
Official Discussion
Since our original code did not have an explicit return statement, the return
value is the evaluated result of the last line executed. The last line is an if
statement, which returns the evaluated result of the branch whose condition
evaluates as true, or nil if there is no such branch. When we passed
'Confucius' or 'Yoda' in as the argument, the condition person == 'Einstein'
evaluated to false, so the last if statement evaluated to nil. This caused our
original method to return nil every time an argument other than 'Einstein' is
passed in.
=end

# Fixing this code:
def get_quote(person)
  case person
  when 'Yoda'
    'Do. Or do not. There is no try.'
  when 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  when 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'
