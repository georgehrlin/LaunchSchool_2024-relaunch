[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

=begin
ANSWER:
=> [1, nil, nil]
map retusn an array consisting of the individual values of its block. In the
second and third iterations of this code, the block returns nil (puts alwasy
returns nil), hence the two nil elements in the final returned array.
=end
