colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebookc']

colors.shuffle!
things.shuffle!

=begin
i = 0
loop do
  break if i > colors.length

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end
=end

=begin
This code raises a TypeError on line 14 because there are seven elements in
things but eight elements in colors. Therefore, when i points to 7, there is
no such element at index 7 in things, so things[7] returns nil. Then, passing
nil to + cannot convert it to a string and causes the error.
=end

=begin
# Fixing the code:
i = 0
loop do
  break if i == things.length

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end
=end

# Further Exploration
i = 0

shorter_length = colors.length > things.length ? things.length : colors.length

loop do
  break if i == shorter_length

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end

# From Elaine Vuong
break if i >= [colors.length, things.length].min

# From Bob Rodes
break if i >= things.length || i >= colors.length
