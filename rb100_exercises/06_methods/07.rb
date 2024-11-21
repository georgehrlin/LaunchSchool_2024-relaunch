def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}."

# NOTE: When you're writing methods, it's important to keep track of how many
# arguments the method accepts and how many it's given upon invocation. Both
# numbers need to match or an error will be thrown.
