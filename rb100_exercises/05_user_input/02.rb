puts "What is your age in years?"
#age = gets.to_i
#puts "You are at least #{age * 12} months old."

# Or:
puts "You are at least #{gets.to_i * 12} months old."
# Succinct as it is. It is not so readable.

# Further Exploration
# Calling `#to_i` on non-numeric value returns `0`, so the output would be:
# You are at least 0 months old.
