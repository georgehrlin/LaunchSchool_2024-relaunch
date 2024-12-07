# a method that takes an array of strings, and returns a string that is all
# those strings concatenated together

=begin
Informal Pseudo-Code

Given an array of strings.

Initiate a collector string that is an empty string.

Iterate through array:
  - Concatenate iterated string to collector string

After iteration, return collector string.
=end

=begin
Formal Pseudo-Code

START

# Given an array of strings arr_str

SET result = ""

arr_str EACH str
  result << str

result

END
=end

def concatenater(arr_str)
  result = ""
  arr_str.each { |str| result << str }

  result
end

puts concatenater(['a', 'bob', 'Catherine'])

=begin
# Or, simply:
def concatenator(arr_str)
  arr_str.join
end
=end
