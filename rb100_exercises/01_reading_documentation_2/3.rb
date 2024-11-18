s = 'abc def ghi,jkl mno pqr,stu vwx yz'
puts s.split.inspect
# Output: 
# "abc"
# "def"
# "ghi,jkl"
# "mno"
# "pqr,stu"
# "vwx"
# "yz"
# [MOSTLY CORRECT]
puts s.split(',').inspect
# Output:
# "abc def ghi"
# "jkl mno pqr"
# "stu vwx yz"
# [MOSTLY CORRECT]
puts s.split(',', 2).inspect
# Output:
# "abc def ghi"
# "jkl mno pqr,stu vwx yz"
# [MOSTLY CORRECT]

=begin
NOTE:
Array#inspect is an alias of Array#to_s. Therefore, the outputs of all three
lines above are one-line string of each array, instead of separate strings
printed on separate lines.
=end

p s
