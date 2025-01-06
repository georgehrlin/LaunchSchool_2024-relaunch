p (['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end)

# My answer:
# I can look up how Array#count (or potentially Enumerable#count) works on the
# official Ruby documentation site.

# Without looking it up though, my guess is count returns the number of times
# (or the number of elements, equivalently) its block returns true.

# Ruby documentation: count "returns a count of specified elements. ... With no
# argument and a block given, calls the block with each element; returns the
# count of elements for which the block returns a truthy value."

# So, with this code, count should return 2.
