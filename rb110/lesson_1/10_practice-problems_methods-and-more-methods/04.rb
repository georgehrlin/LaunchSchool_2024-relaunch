['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

=begin
My answer:
=> {"a"=>"ant", "b"=>"bear", "c"=>"cat"}
each_with_object passes both the element that's being iterated and its argument
to its block, which are assigned to the two block parameters. In this code, the
block performs keyed assignment to the argument hash. Finally, each_with_object
returns its argument hash as its final return value.
=end
