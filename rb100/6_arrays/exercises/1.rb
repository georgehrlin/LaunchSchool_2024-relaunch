arr = [1, 3, 5, 7, 9, 11]
number = 3

# p arr.include?(number)

# Or:
def find_num(n, arr)
  arr.each do |n|
    if n == 3
      puts "#{n} is in the array!"
      break
    end
  end
end

find_num(number, arr)
