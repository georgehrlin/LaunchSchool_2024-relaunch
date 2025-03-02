hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = 'aeiou'
hsh.each_value do |arr|
  arr.each do |str|
    str.split('').each do |letter|
      puts letter if vowels.include?(letter)
    end
  end
end

# With modification after reading Hint:
vowels = 'aeiou'
hsh.each_value do |arr|
  arr.each do |str|
    str.chars.each do |letter|
      puts letter if vowels.include?(letter)
    end
  end
end
