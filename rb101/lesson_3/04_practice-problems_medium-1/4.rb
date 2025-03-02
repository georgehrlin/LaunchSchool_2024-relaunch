def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

arr1 = [1, 2, 3, 4]
p rolling_buffer1(arr1, 2, 'xdd')
p arr1

arr2 = [1, 2, 3, 4]
p rolling_buffer2(arr2, 2, 'rofl')
p arr2
