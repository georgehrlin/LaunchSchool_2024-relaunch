p ([1, 2, 3].reject do |num|
  puts num
end)

=begin
My answer:
I had to look up Ruby's documentation because I wasn't sure how reject works:
"Returns a new Array whose elements are all those from self for which the block
returns false or nil."
Threfore, for this code, because puts always returns nil, the block returns nil
for every element of the array:
=> [1, 2, 3]
=end
