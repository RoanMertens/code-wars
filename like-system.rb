# a method that returns a string with the names that are given.
def likes(people)
  if people.length.zero?
    'no one likes this'
  elsif people.length == 1
    people[0] + ' likes this'
  else
    long_likes(people)
  end
end

def long_likes(people)
  closure = people[-1] + ' like this'
  opening = people[0] + ', ' + people[1] + ' and '
  left_over = (people.length - 2).to_s
  case people.length
  when 2
    people[0] + ' and ' + closure
  when 3
    opening + closure
  else
    opening + left_over + ' others like this'
  end
end

# this shows the names of all the people
# def long_likes(people)
#   a = ''
#   people.each_with_index do |name, index|
#     a += name + ', ' if index < people.length - 2
#   end
#   a + people[-2] + ' and ' + people[-1] + ' like this'
# end

puts likes([])
puts likes(['bobby'])
puts likes(%w[bobby bert])
puts likes(%w[bobby bert jerry])
puts likes(%w[bobby bert jerry frank])

# "Jacob and Alex like this"
