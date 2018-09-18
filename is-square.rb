def square?(num)
  return false if num < 0
  (Math.sqrt(num) % 1).zero?
end

puts square?(4)
puts square?(-1)
puts square?(3)
puts square?(26)
puts square?(25)
