=begin
Problem:

Given a string, write a method 'palindrome_substrings' which returns all the
substrings from a given string which are palindromes and 2 or more characters
long.

Test Cases:
palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
palindrome_substrings("palindrome") == []
palindrome_substrings("") == []
=end

=begin
(Understand the) Problem: (Written by Me)

Input: A string
Output: An array of palindrome substrings
Rules:
  Explicit:
    - All palindrome substrings within the input string that contains two or
      more characters must be returned in an array
    - Palindromes are case-sensitive ("abcddcbA" is not a palindrome)
    - If input string is an empty string, the output is an empty array
    - Return an empty array if no palindrome substring exists
=end

=begin
Algorithm:
  - Initialize a result variable to an empty array
  - Create an array named substring_arr that contains all of the substrings of
    the input string that are at least 2 characters long
  - Loop through the words in the substring_arr array
  - If the word is a palindrome, append it to the result array
  - Return the result array
=end

def palindrome_substrings(str)
  result = []
  substrings_arr = substrings(str)
  substrings_arr.each do |substring|
    result << substring if is_palindrome?(substring)
  end
  result
end

=begin
To find a correct algorithm for substrings, you can simplify the problem by
using a small, concrete example to determine what we need to do. For instance,
you can start with a short word like 'halo' and write all its substrings that
are at least 2 characters in length. The resulting list is:
['ha', 'hal', 'halo', 'al', 'alo', 'lo'], which clearly shows some sort of
complex looping happening.

The first loop—the outermost loop—iterates over the starting index for the
substrings. With 'halo' as a starting string, we need to interate over the
letters 'h', 'a', and 'l'. (We don't need to iterate over 'o' because there are
no substrings of at least two character s that start with 'o'.)

Algorithm for substrings (Preliminary):
- For each starting index from 0 through the next to last index position
  - For each substring length from 2 until there are no substrings of that
    length
    - Extract the substring of the indicated length starting at the indicated
      index position
  - End of inner loop
- End of outer loop

Looking at examples, we can determine:
1. The outer loop iterates over indexes from 0 to the length of the next to the
   last position (e.g., string.length - 2).
2. The inner loop ranges from 2 to the original string length minus the
   starting length minus the starting index (string.length - startingIndex).

Algorithm for substrings (Revised):
- Create an empty array called result that will contain all required substrings
- Create a starting_index variable (value: 0) for the starting index of a
  substring
- Start a loop that iterates over starting_index from 0 to the length of the 
  string minus 2
  - Create a num_chars variable (value: 2) for the length of a substring
  - Start an inner loop that iterates over num_chars from 2 to
    string.length - starting_index
    - Extract a substring of length num_chars from string starting at
      starting_index
    - Append the extracted substring to the result array
    - Increment the num_chars variable by 1
  - End the inner loop
  - Increment the starting_index variable by 1
- End the outer loop
- Return the result array
=end

=begin
Conversion of Algorithm to Formal Pseudocode:
START

/* Given a string named 'string' */

SET result = []
SET starting_index = 0

WHILE starting_index <= length of string - 2
  SET num_chars = 2
  WHILE num_chars <= string.length - starting_index
    SET substring = num_chars characters from string starting at index starting_index
    Append substring to result
    SET num_chars = num_chars + 1
  END LOOP

  SET starting_index = starting_index + 1
END LOOP

RETURN result

END
=end

def substrings(str)
  result = []
  starting_index = 0

  while starting_index <= str.length - 2
    num_chars = 2
    while num_chars <= str.length - starting_index
      substring = str[starting_index, num_chars]
      result << substring
      num_chars += 1
    end
    starting_index += 1
  end

  result
end

def is_palindrome?(str)
  str == str.reverse
end

=begin
Complete Informal Pseudocode:
Input: A string
Output: An array of substrings
Rules: Palindrome words should be case-sensitive, meaning "adBA" is NOT a
       palindrome

Algorithm:
substrings
==========
- Create an empty array called result that will contain all required substrings
- Create a starting_index variable (value: 0) for starting index of a substring
- Start a loop that iterates from starting_index from 0 to the length of input
  string minus 2
  - Create a num_chars variable (value: 2) for length of a substring
  - Start an inner loop that iterates over num_chars from 2 to
    string.length - starting_index
  - Append extracted substring to result array
  - Increment num_chars variable by 1
  - End inner loop
  - Increment starting_index variable by 1
- End outer loop
- Return result array

is_palindrome?
==============
- Check whether input string value is equal to its reversed value (use
  String#reverse)

palindrome_substrings
=====================
- Create a result variable to an empty array
- Create an array named substring_arr that contains all of substrings of input
  string that are at least 2 characters long
- Loop through words in substring_arr array
- If words is a palindrome, append it to result array
- Return result array

=end

p palindrome_substrings("supercalifragilisticexpialidocious"); # ["ili"]
p palindrome_substrings("abcddcbA");   # ["bcddcb", "cddc", "dd"]
p palindrome_substrings("palindrome"); # []
p palindrome_substrings("");           # []

=begin
The main takeaway is you should be able to write a plain English solution to
the problem. If you can't do that, you won't be able to code it either. You
also don't need any "fancy" methods to solve these problems.
=end
