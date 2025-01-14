customer_orders = [
  {
    customer_id: 12,
    customer_name: 'Emma Lopez',
    orders: [
      { order_fulfilled: true, order_value: 135.99 },
      { order_fulfilled: false, order_value: 58.00 },
      { order_fulfilled: true, order_value: 289.49 },
#      { order_fulfilled: false, order_value: 58.00 }
    ]
  },
  {
    customer_id: 32,
    customer_name: 'Michael Richards',
    orders: [
      { order_fulfilled: true, order_value: 120.00 },
      { order_fulfilled: false, order_value: 85.65 }
    ]
  },
  # rest of data...
]

fulfilled_orders = customer_orders.map do |customer| #
  {
    customer_id: customer[:customer_id],
    customer_name: customer[:customer_name]
  }
end

customer_orders.each_with_index do |data, index|
  order_value = data[:orders].reduce(0) do |total, order| #
    total + order[:order_value] if order[:order_fulfilled] #
  end

  fulfilled_orders[index][:order_value] = order_value #
end

p fulfilled_orders

# I couldn't figure out what is wrong with the code on lines 22 to 35
# The correct answer is line 31. I had to ask Claude to tell me what is wrong
# with the code and below is its answer:

=begin
The issue is in your `reduce` block. Currently, it looks like this:

```ruby
order_value = data[:orders].reduce(0) do |total, order|
  total + order[:order_value] if order[:order_fulfilled]
end
```

The problem is that when you use `if` at the end of a line like this in Ruby, it affects the entire line's return value. If `order[:order_fulfilled]` is `false`, the entire expression returns `nil`. In `reduce`, if any iteration returns `nil`, it propagates that `nil` through the rest of the iterations.

Here's what's happening in the first customer's orders:
1. First order: fulfilled = true, returns `0 + 135.99`
2. Second order: fulfilled = true, returns `135.99 + 289.49`
3. Third order: fulfilled = false, returns `nil`

That `nil` from the third iteration becomes the final result of the `reduce` operation.

To fix this, you need to handle the conditional inside the block. Here's the corrected version:

```ruby
order_value = data[:orders].reduce(0) do |total, order|
  order[:order_fulfilled] ? total + order[:order_value] : total
end
```
=end
