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
Data Structure:
  Input: A string
  Output: An array of strings

Algorithm:
  - Create an empty array to collect potential palindrome substrings
  - Iterate through input string
    - Start at index 0. Check whether substring at indices 0 and 1 is a
      palindrome
      - If it is, append it to collection array
      - If not iteration moves to next loop
    - Check whether substring from index 0 to 2 is a palindrome
      - If it is, append it to collection array
      - If not iteration moves to next loop
    - (Repeat until substring 0 to last index of input string is checked)
    - Once the ending index reaches last index of input string, starting index
      increases by 1
    - (Repeat until substring 1 to last index of input string is checked)
    - (Repeat until starting index is same as last index of input string)

Algorithm Revised (Wrote After Code Completion):
  - Create an empty array to collect palindrom substrings
  - Iterate through input string from index 0 until last index
    - Check whether substring from index 0 to 1 is a palindrome
      - If it is, append it to collection array
      - If not, do nothing. Move on to next iteration
    - Check whether substring from index 0 to 2 is a palindrome
      - If it is, append it to collection array
      - If not, do nothing. Move onto next iteration
    - (Repeat until ending index of subtring is same as input string's last
      index, then move on to next iteration with starting index + 1)
  - Return collection array
=end

def palindrome?(str)
  str == str.reverse
end

def palindrome_substrings(str)
  result = []
  idx_start = 0
  idx_end = idx_start + 1

  until idx_start >= str.length - 1
    until idx_end == str.length - 1
      substring = str[idx_start..idx_end]
      result << substring if palindrome?(substring)
      idx_end += 1
    end
    idx_start += 1
    idx_end = idx_start + 1
  end

  result
end

p palindrome_substrings("supercalifragilisticexpialidocious") # == ["ili"]
p palindrome_substrings("abcddcbA") # == ["bcddcb", "cddc", "dd"]
p palindrome_substrings("palindrome") # == []
p palindrome_substrings("") # == []
