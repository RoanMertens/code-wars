# talent rider intro test
# Given two strings find characters present in both.
# E.g, for "harpoon" and "countryside", the answer is "nro".

def comp_char(str_one, str_two)
  letters = str_one.split('').select do |letter|
    str_two.split('').include?(letter)
  end
  letters.uniq.join('')
end

puts comp_char('harpoon', 'countryside')
