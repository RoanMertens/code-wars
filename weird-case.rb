# Write a function toWeirdCase (weirdcase in Ruby)
# that accepts a string, and returns the same string
# with all even indexed characters in each word upper
# cased, and all odd indexed characters in each word
# lower cased. The indexing just explained is zero based,
# so the zero-ith index is even, therefore that character
# should be upper cased.

def weirdcase(string)
  counter = 0
  string.split('').map do |char|
    if char == ' '
      counter = 0
      char
    else
      counter += 1
      counter.odd? ? char.upcase : char.downcase
    end
  end.join('')
end

weirdcase('String')
p weirdcase('Weird string case')
