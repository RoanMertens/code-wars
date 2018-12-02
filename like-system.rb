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
  a = ''
  people.each_with_index do |name, index|
    a += name + ', ' if index < people.length - 2
  end
  a + people[-2] + ' and ' + people[-1] + ' like this'
end

puts likes([])
puts likes(['bobby'])
puts likes(%w[bobby bert])
puts likes(%w[bobby bert jerry frank])

# "Jacob and Alex like this"
