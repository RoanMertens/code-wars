# method to make an array of strings that does a wave
def wave(str)
  # Code here
  flat = []
  wave = []
  str.length.times { flat << str }

  flat.each_with_index do |string, index|
    w = ''
    arstring = string.split('')
    arstring.each_with_index { |let, i| w << (index == i ? let.upcase : let) }
    wave << w unless w == w.downcase
  end
  wave
end

puts wave('aaaaaaaa')
