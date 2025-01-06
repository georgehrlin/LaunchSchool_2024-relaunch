p ({ a: 'ant', b: 'bear', }.map do |key, value|
  if value.size > 3
    value
  end
end)

=begin
ANSWER:
Without looking up the docs, I find this question challenging. First, I vaguely
remembers that map returns an array when called on a hash, but I'm not sure.
map transforms, returning an array which consists of the block's return values.
However, in this code's first iteration, the return value of the block is nil,
so I'm not sure how the final return value will be like.

My guess is:
=> [[nil, nil], [:b, "bear"]] [INCORRECT]
=end

=begin
CORRECTION:
I over-thought it. map simply "returns an array of objects returned by the
block." Therefore, the return value of this code is:
=> [nil, "bear"]
=end
