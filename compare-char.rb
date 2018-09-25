# talent rider intro test
# Given two strings find characters present in both.
# E.g, for "harpoon" and "countryside", the answer is "nro".

def comp_char(str_one, str_two)
  print "In #{str_one} and #{str_two} are the letters: "
  letters = str_one.split('').select do |letter|
    str_two.split('').include?(letter)
  end
  letters.uniq.join('')
end

print 'word one:'
char_one = gets.chomp
print 'word two:'
char_two = gets.chomp

puts comp_char(char_one, char_two)
