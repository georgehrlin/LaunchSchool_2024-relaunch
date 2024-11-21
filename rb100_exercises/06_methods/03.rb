def hello
  'Hello'
end

def world
  'World'
end

print hello
print ' '
puts world

# Official Answer
puts "#{hello} #{world}"

# From Joseph Liang
puts hello + " " + world
