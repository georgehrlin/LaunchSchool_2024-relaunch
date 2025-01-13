[[1, 2], [3, 4]].map do |arr|
  puts arr.first
end
# 1
# 3
# => [nil, nil]

=begin
Line 1  |Method call: map  |Obj: outer array               |No side effect                   |Return: [nil, nil]
Line 1-3|Block execution   |Obj: each sub-array            |No side effect                   |Return: nil
Line 2  |Method call: first|Obj: sub-array                 |No side effect                   |Return: first element of sub-array
Line 2  |Method call: puts |Obj: first element of sub-array|Output first element of sub-array|Return: nil
