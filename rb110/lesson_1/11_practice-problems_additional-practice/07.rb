statement = "The Flintstones Rock"

hsh = statement.split('').sort.each_with_object({}) do |char, result|
  result[char] = statement.count(char)
end

p hsh_processed = hsh.keep_if { |char, num| char != ' '}

# OFFICIAL SOLUTION
statement = "The Flintstones Rock"

result = {}
alphabet = ('A'..'Z').to_a + ('a'..'z').to_a

alphabet.each do |letter|
  result[letter] = statement.count(letter) if statement.include?(letter)
end

p result
