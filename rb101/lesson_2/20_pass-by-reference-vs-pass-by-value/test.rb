=begin
def change_name(name)
  name = 'Bob'
end

name = 'Jim'
p change_name(name)
p name # => 'Jim'
=end

def add_name(arr, name)
  arr = arr + [name]
  p arr
end

names = ['bob', 'kim']
add_name(names, 'jim')
p names