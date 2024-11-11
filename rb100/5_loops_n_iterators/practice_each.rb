names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
x = 1

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end

=begin
champs = ['Ashe', 'Braum', 'Caitlyn']
p champs.each { |champ| puts champ }
# => ['Ashe', 'Braum', 'Caitlyn']
# Output:
# Ashe
# Braum
# Caitlyn
=end
