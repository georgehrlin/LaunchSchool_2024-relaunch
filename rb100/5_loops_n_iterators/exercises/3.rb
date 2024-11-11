def count_to_0(n)
  if n > 0
    puts n
    count_to_0(n - 1)
  elsif n < 0
    puts n
    count_to_0(n + 1)
  else
    puts n
  end
end

# Official Answer
def count_to_zero(number)
  if number <= 0
    puts number
  else
    puts number
    count_to_zero(number - 1)
    
  end
end

count_to_zero(10)
puts("\n")
count_to_zero(-3)
