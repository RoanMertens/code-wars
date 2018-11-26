# method to make an array of strings that does a wave
def wave(str)
  # Code here
  flat = []
  wave = []

  str.length.times { flat << str }

  flat.each_with_index do |string, index|
    word = ''
    arstring = string.split('')
    arstring.each_with_index do |let, i|
      if let == ' '
        word << ' '
      elsif index == i
        word << let.upcase
      else
        word << let
      end
    end
    wave << word unless word == word.downcase
  end
  wave
end

puts wave('word fart')
