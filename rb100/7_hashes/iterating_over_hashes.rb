# iterating_over_hashes.rb

person = { name:'Jerome', age:'23', height:'166 cm' }

person.each do |k, v|
  p "The person's #{k} is #{v}."
end
# Output:
# "The person's name is Jerome."
# "The person's age is 23."
# "The person's height is 166 cm."

person.each do |pair|
  p pair
end
# Output:
# [:name, "Jerome"]
# [:age, "23"]
# [:height, "166 cm"]
