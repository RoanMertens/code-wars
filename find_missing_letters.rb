def find_missing_letter(arr)
  # your code here
  (arr.first..arr.last).reject { |letter| arr.include?(letter) }.first
end

puts find_missing_letter(%w[a b c d f])

# Write a method that takes an array of consecutive (increasing) letters as inpu
# t and that returns the missing letter in the array.

# You will always get an valid array. And it will be always exactly one letter
# be missing. The length of the array will always be at least 2.
# The array will always contain letters in only one case.

# Example:

# ['a','b','c','d','f'] -> 'e'
# ['O','Q','R','S'] -> 'P'
