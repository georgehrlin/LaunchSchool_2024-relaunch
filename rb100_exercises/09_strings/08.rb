alphabet = 'abcdefghijklmnopqrstuvwxyz'

puts alphabet.split('')

# NOTE: By invoking split on alphabet and passing an empty string as an
# argument, we can separate individual characters in alphabet.

# From Jesse Ekwuruibe
alphabet = 'abcdefghijklmnopqrstuvwxyz'
puts alphabet.chars

# From Bob Rodes
alphabet = 'abcdefghijklmnopqrstuvwxyz'
alphabet.each_byte { |byte| puts byte.chr }
alphabet.each_char { |char| puts char }
26.times { |i| puts alphabet[i] }
puts alphabet.scan(/./)
