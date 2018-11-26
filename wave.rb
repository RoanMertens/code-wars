# method to make an array of strings that does a wave
def wave(str)
  # Code here
  flat = []
  wave = []

  str.length.times { flat << str }

  flat.each_with_index do |string, i|
    wave << string.gsub(string[i], string[i].upcase) unless string[i] == ' '
  end
  wave
end

p wave('str ing')
