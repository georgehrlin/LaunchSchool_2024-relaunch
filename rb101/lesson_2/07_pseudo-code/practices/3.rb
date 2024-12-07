# a method that determines the index of the 3rd occurrence of a given character
# in a string. For instance, if the given character is 'x' and the string is
# 'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). If the
# given character does not occur at least 3 times, return nil.

=begin
Informal Pseudo-Code

Given a string, and an argument single-letter string.

Initiate a variable i with value 0 to keep track of index.
Initiate a variable counter with value 0 to keep track of occurence.

Split string into an array of individual letters.

Iterate over array:
  - If letter being iterated is same as argument string
    - Counter increments by 1
    - Return i if counter is 3
    - i increments by 1
  - Else
    - i increments by 1

Return nil if out if iteration is brokwn out of
=end

=begin
Formal Pseudo-Code

START

Given a string, str, and an argument single-letter string, l.

SET i = 0
SET counter = 0

arr = str SPLIT

WHILE i < size of arr
  IF element at index i == l
    counter += 1
    RETURN i if counter == 3
    i += 1
  ELSE
    i += 1

RETURN nil
=end

def third_occurence(str, l)
  i = 0
  counter = 0

  arr = str.split("")

  while i < arr.size
    if arr[i] == l
      counter += 1
      return i if counter == 3
      i += 1
    else
      i += 1
    end
  end

  nil
end

# Solutions by Claude 3.5 Sonnet
def third_occurence1(str, l)
  str.chars.each_with_index.inject(0) do |count, (char, index)|
    if char == l
      count += 1
      return index if count == 3
    end
    count
  end
  nil
end

p third_occurence1('axbxcdxex', 'x')
p third_occurence1('axbxcdxex', 'z')
