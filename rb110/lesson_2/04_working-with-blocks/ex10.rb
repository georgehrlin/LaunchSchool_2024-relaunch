[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.to_i == el
      el + 1
    else
      el.map do |n|
        n + 1
      end
    end
  end
end
# => [[[2, 3], [4, 5]], [6, 7]]

=begin
Line 1   |map  |Outer arr               |No|[[[2, 3], [4, 5]], [6, 7]]
Line 1-11|block|Inner arr               |No|[[2, 3], [4, 5]]; [6, 7]    |map on line 1
Line 2   |map  |Inner arr               |No|[[2, 3], [4, 5]]; [6, 7]    |Outer block return value
Line 2-10|block|Inner arr el            |No|[2, 3], [4, 5]; [6, 7]      |map on line 2
Line 3   |to_s |Inner arr el            |No|"[1, 2]", "[3, 4]"; "5", "6"|to_i
Line 3   |to_i |el.to_s                 |No|0, 0; true, true            |==
Line 3   |==   |el.to_s.to_i            |No|false, false; true, true    |if on line 3
Line 3   |if   |el.to_s.to_i == el      |No|nil, nil; 6, 7              |Inner block return value
Line 4   |+    |Inner arr el            |No|6; 7                        |Inner block return value
Line 5   |else |Inner arr el            |No|[2, 3]; [4, 5]              |Inner block return value
Line 6   |map  |Inner arr               |No|[2, 3]; [4, 5]              |Inner block return value
Line 6-8 |block|Inner-inner arr el (int)|No|2, 3; 4, 5                  |map on line 6
Line 7   |+    |Inner-inner arr el (int)|No|2, 3; 4, 5                  |Inner-inner block return value

[SOME INCORRECTIONS]
=end

=begin
CORRECTIOIN

Line 1   |map  |Outer arr               |No|[[[2, 3], [4, 5]], [6, 7]]
Line 1-11|block|Inner arr               |No|[[2, 3], [4, 5]]; [6, 7]    |map on line 1
Line 2   |map  |Inner arr               |No|[[2, 3], [4, 5]]; [6, 7]    |Outer block return value
Line 2-10|block|Inner arr el            |No|[2, 3], [4, 5]; [6, 7]      |map on line 2
Line 3   |to_s |Inner arr el            |No|"[1, 2]", "[3, 4]"; "5", "6"|to_i
Line 3   |to_i |el.to_s                 |No|0, 0; true, true            |==
Line 3   |==   |el.to_s.to_i            |No|false, false; true, true    |if on line 3
Line 3-8 |if/else|Comparison result     |No|result of + / inner map     |Inner block return value
Line 4   |+    |Inner arr el            |No|6; 7                        |Inner block return value
Line 6   |map  |Inner arr               |No|[2, 3]; [4, 5]              |Inner block return value
Line 6-8 |block|Inner-inner arr el (int)|No|2, 3; 4, 5                  |map on line 6
Line 7   |+    |Inner-inner arr el (int)|No|2, 3; 4, 5                  |Inner-inner block return value
=end
