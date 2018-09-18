# Write a function named firstNonRepeatingLetter
# that takes a string input, and returns the
# first character that is not repeated anywhere in the string.

def first_non_repeating_letter(str)
  # Code go here
  string_two = str.split('')
  str.split('').select do |char|
    counter = 0
    string_two.each do |character|
      counter += 1 if char.downcase == character.downcase
    end
    return char if counter == 1
  end
  ''
end

# def first_non_repeating_letter(str)
#   # Code go here
#   return str if str.length == 1
#   newstr = str.split('').uniq!
#   str.split('').select do |char|
#     p char unless newstr.include?(char)
#   end
# end

puts "the letter should be: a"
puts first_non_repeating_letter('a')

puts "the letter should be: c"
puts first_non_repeating_letter('aCaad')
