# From notes. Didn't write
def double_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    doubled_numbers << current_number * 2

    counter += 1
  end

  doubled_numbers
end

def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size
    numbers[counter] *= 2
    counter += 1
  end
end

numbers1 = [1, 4, 3, 7, 2, 6]
p double_numbers(numbers1)
p numbers1

double_numbers!(numbers1)
p numbers1
