p ([{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end)
# => [{:c=>"cat"}]

=begin
Line 1  |select   |Outer arr     |No|[{:c=>"cat"}]    |No
Line 1-5|block exe|Each hsh      |No|Boolean          |select
Line 2  |all?     |Each hsh      |No|Boolean          |Block outer return val
Line 2-4|block exe|Each key & val|No|Boolean          |all?
Line 3  |to_s     |Each key      |No|key as str       |Argument of ==
Line 3  |[]       |Each val      |No|1st letter of val|Receiver of ==
Line 3  |==       |Each val      |No|Boolean          |Bock inner return val
=end

=begin
Q: What would happen if, instead of using all?, we used any?. Why would this
affect the return value of select?

A: Yes, if any? was used instead, the return value of this code would be the
original array of hashes, which is a different return value of select.
=end