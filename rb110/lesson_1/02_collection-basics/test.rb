=begin
str = 'How do you get to Carnegie Hall?'
arr = str.split
p arr.join(' ')
=end

=begin
p 'aaabcdaaa'.split('a', 1) # => ["aaabcdaaa"]
p 'aaabcdaaa'.split('a', 2) # => ["", "aabcdaaa"]
p 'aaabcdaaa'.split('a', 3) # => ["", "", "abcdaaa"]
p 'aaabcdaaa'.split('a', 5) # => ["", "", "", "bcd", "aa"]
p 'aaabcdaaa'.split('a', 6) # => ["", "", "", "bcd", "", "a"]
p 'aaabcdaaa'.split('a', 7) # => ["", "", "", "bcd", "", "", ""]
p 'aaabcdaaa'.split('a', 8) # => ["", "", "", "bcd", "", "", ""]
=end

=begin
arr = [[:name, 'Joe'], ["age", 10], [:favourite_color, 'blue']]
p arr.to_h
# My guess: => {:name=>"Joe", "age"=>10, :favourite_color=>"blue"}
=end

arr = [1, 2, 3]
arr[0] += 8 # Syntactical sugar for arr[0] = arr[0] + 8
p arr # Output: [9, 2, 3]

arr[1] += 1
arr[2] += 1
p arr