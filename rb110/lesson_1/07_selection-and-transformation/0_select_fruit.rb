produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

=begin
def select_fruit(hsh)
  hsh.filter { |key, value| value == 'Fruit'}
end
=end

=begin
def select_fruit(hsh)
  result = {}
  hsh.each { |key, value| result[key] = value if value == 'Fruit' }
  result
end
=end

def select_fruit(hsh)
  result = {}
  keys = hsh.keys
  idx = 0

  loop do
    key = keys[idx]
    value = hsh[key]
    result[key] = value if value == 'Fruit'
    idx += 1
    break if idx >= hsh.size
  end

  result
end

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
p select_fruit({})

# Official Solution
def select_fruit(produce_list)
  produce_keys = produce_list.keys
  counter = 0
  selected_fruits = {}

  loop do
    break if counter == produce.keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == 'Fruit'
      selected_fruits[current_key] = current_value
    end

    counter += 1
  end

  selected_fruits
end
