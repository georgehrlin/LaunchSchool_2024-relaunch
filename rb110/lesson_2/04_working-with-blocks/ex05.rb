[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end
# => [[2, 4], [6, 8]]

=begin
Line 1  |map        |outer arr        |No|[[2, 4], [6, 8]]|No
Line 1-5|block outer|each s-arr       |No|[2, 4];[6, 8]   |Outer level map
Line 2  |map        |each s-arr       |No|[2, 4];[6, 8]   |Outer block return value
Line 2-4|block inner|each ele of s-arr|No|2. 4. 6. 8.     |Inner level map
Line 3  |*          |each ele of s-arr|No|2. 4. 6. 8.     |Inner block return value
=end
