def is_an_ip_number?(number)
  (0..255).include?(number.to_i)
end

=begin
# Ben's original code:
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split('.')
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end
=end

# My attempt:
def dot_separated_ip_address(input_string)
  dot_separated_words = input_string.split('.')

  return false if dot_separated_words.size != 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  true
end

p dot_separated_ip_address('1.2.3.4')
p dot_separated_ip_address('4.5.5')
p dot_separated_ip_address('1.2.3.4.5')
p dot_separated_ip_address('0.0.0.0')
p dot_separated_ip_address('255.255.255.0')
