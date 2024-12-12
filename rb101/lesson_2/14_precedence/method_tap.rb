=begin
array = [1, 2, 3]

mapped_array = array.map { |num| num + 1 }

mapped_array.tap { |value| p value }
# Output: [2, 3, 4]
=end

(1..10)                 .tap { |x| p x }
.to_a                   .tap { |x| p x }
.select { |x| x.even? } .tap { |x| p x }
.map { |x| x*x }        .tap { |x| p x }
