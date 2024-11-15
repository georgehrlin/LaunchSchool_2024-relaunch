=begin
a = "hi there"
b = a
a = "not here"

p b
=end

=begin
a = "hi there"
b = a
a << ", Bob"

p b
=end

=begin
a = [1, 2, 3, 3]
b = a
c = a.uniq!

p a
p b
p c
=end

def test(b)
  b.map! { |letter| "I like the letter: #{letter}" }
end

a = ['a', 'b', 'c']
test(a)

p a