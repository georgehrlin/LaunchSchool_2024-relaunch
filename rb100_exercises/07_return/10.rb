def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number

=begin
This code will print:
1

tricky_number returns 1 because the assignment of 1 to number on line 3 returns
the value assigned. It is also the only line of code executed in the method and
the last line, making 1 the final method return value. Line 9 then prints 1 to
the console.
=end
