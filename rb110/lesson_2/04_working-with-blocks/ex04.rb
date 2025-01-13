my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end
# 18
# 7
# 12
# => [[18, 7], [3, 12]]

=begin
Line 1  |each     |Outer arr              |No|[[18, 7], [3, 12]]|Assgiend to my_arr
Line 1-7|block exe|Each s-arr             |No|Each s-arr        |No
Line 2  |each     |Each s-arr             |No|Each s-arr        |Block return value
Line 2-6|block exe|Each element of s-arr  |No|nil               |No
Line 3  |>        |Each element of s-arr  |No|true of false     |if condition
Line 3  |if       |Return value of num > 5|No|(NOT SURE)        |Block return value
Line 4  |puts     |Element if > 5         |Output element|nil   |If statement return value

CORRECTION
(NOT SURE) → nil
=end
