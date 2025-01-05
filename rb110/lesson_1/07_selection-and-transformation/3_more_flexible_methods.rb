def general_select(produce_list, selection_criteria)
  produce_keys = produce_list.keys
  counter = 0
  selected_produce = []

  loop do
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == selection_criteria
      selected_produce[current_key] = current_value
    end

    counter += 1
  end

  selected_produce
end

def multiply(numbers, multiplier)
  result = []
  counter = 0

  loop do
    break if counter == numbers.size
    result << numbers[counter] * multiplier
    counter += 1
  end

  result
end

some_numbers = [1, 4, 3, 7, 2, 6]
p multiply(some_numbers, 3)

def select_letter(str, char)
  result = ''
  counter = 0

  loop do
    break if counter == str.size
    result << str[counter] if str[counter] == char
    counter += 1
  end

  result
end

question = 'How many times does a particular character appear in this sentence?'
p select_letter(question, 'a') == "aaaaaaaa"
p select_letter(question, 't') == "ttttt"
p select_letter(question, 'z') == ""

alphabet = 'abcdefghijklmnopqrstuvwxyz'

for char in alphabet.chars
  puts char
end
