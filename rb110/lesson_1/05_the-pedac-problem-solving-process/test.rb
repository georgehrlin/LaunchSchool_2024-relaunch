=begin
Algorithm:
- Create a variable result that points to an empty array
- Create a variable elements_num that points to 1
- Create a variable even_num that points to 2
- Creat a loop that iterates for input times
  - Create a variable subarray that points to an empty array
  - Create a loop that iterates until elements_num == input
    - For elements_num times
      - Append even_num to subarray
      - Increment even_num by 2
    - Append subarray to result
    - Increment elements_num by 1
  - Loop END
-Loop END
- Return result
=end

def growing_arrays_of_evens(num_of_subarrays)
  result = []
  elements_num = 1
  even_num = 2

  num_of_subarrays.times do
    subarray = []
    elements_num.times do
      subarray << even_num
      even_num += 2
    end
    result << subarray
    elements_num += 1
  end

  result
end

p growing_arrays_of_evens(1)
p growing_arrays_of_evens(2)
p growing_arrays_of_evens(3)
p growing_arrays_of_evens(4)
