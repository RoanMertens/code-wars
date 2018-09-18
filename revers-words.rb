# Complete the function that accepts a string parameter,
# and reverses each word in the string.
# All spaces in the string should be retained.

def reverse_words(str)
  # Go for it
  newstr = str.split('')
  str = str.split(' ').map(&:reverse).join('').split('')
  newstr.each_with_index { |char, index| str.insert(index, ' ') if char == ' ' }
  str.join('')
end

reverse_words('The  quick brown fox jumps over the lazy dog.')
