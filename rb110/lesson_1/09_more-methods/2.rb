# Enumerable#each_with_index

[1, 2, 3].each_with_index do |num, index|
  puts "The index of #{num} is #{index}."
end
# Output:
# The index of 1 is 0.
# The index of 2 is 1.
# The index of 3 is 2.
# => [1, 2, 3]

{ a: 'ant', b: 'bear', c: 'cat' }.each_with_index do |pair, index|
  puts "The index of #{pair} is #{index}."
end
# Output:
# The index of [:a, "ant"] is 0.
# The index of [:b, "bear"] is 1.
# The index of [:c, "cat"] is 2.
# => {:a=>"ant", :b=>"bear", :c=>"cat"}

# When calling each_with_index on a hash, the first argument now represents an
# array containing both the key and the value.
