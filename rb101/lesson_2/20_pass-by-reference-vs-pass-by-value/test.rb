require 'pry'

=begin
def change_name(name)
  name = 'Bob'
end

name = 'Jim'
p change_name(name)
p name # => 'Jim'
=end

=begin
def add_name(arr, name)
  arr = arr + [name]
  p arr
end

names = ['bob', 'kim']
add_name(names, 'jim')
p names
=end

=begin
def fix(value)
  value = value.upcase
  value.concat('!')
end

s = 'hello'
t = fix(s)
binding.pry
=end

=begin
def change(value)
  value = value.upcase!
  value.concat('!')
end

s = 'hello'
t = change(s)

p s # => "HELLO!"
p t # => "HELLO!"

p s.object_id == t.object_id # => true
=end
