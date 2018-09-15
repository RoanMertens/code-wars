def comp(array1, array2)
  return false if array1.nil? || array2.nil?
  array1.map! { |number| number * number }.sort == array2.sort
end

a = [121, 144, 19, 161, 19, 144, 19, 11]
b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]

c = [121, 144, 19, 161, 19, 144, 19, 11]
d = [132, 14641, 20736, 361, 25921, 361, 20736, 361]

puts 'the first test should return true'
puts "result: #{comp(a, b)}"

puts 'the second test should return false'
puts "result: #{comp(c, d)}"
