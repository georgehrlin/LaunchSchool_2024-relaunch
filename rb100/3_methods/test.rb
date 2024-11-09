def first
  puts "first method"
end

def second
  first
  puts "second method"
end

second

=begin
Call Stack
-
-
-
main


Call Stack
-
-
-
main: line 10


Call Stack
-
-
second: line 6
main: line 10


Call Stack
-
first: line 2
second: line 6
main: line 10


Call Stack
puts
first:line 2
second: line 6
main: line 10

Call Stack
-
first: line 2
second: line 6
main: line 10

Call Stack
-
-
second: line 6
main: line 10

Call Stack
-
-
-
main: line 10

Call Stack
-
-
-
-
=end