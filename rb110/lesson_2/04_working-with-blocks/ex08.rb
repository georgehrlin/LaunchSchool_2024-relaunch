[[8, 13, 27], ['apple', 'banana', 'cantaloupe']].map do |arr|
  arr.select do |item|
    if item.to_s.to_i == item
      item > 13
    else
      item.size < 6
    end
  end
end
# => [[27], ["apple"]]

=begin
NOTES
"At first you might think to reach for the select method to perform selection,
but since we're working with a nested array, that won't work. We first need to
access the nested arrays before we can select the value we want."
=end
