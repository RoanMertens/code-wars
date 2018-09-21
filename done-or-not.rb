def done_or_not(board)
  # your code here
  board.each { |row| return 'Try again!' unless (1..9).to_a == row.sort }
  counter = 0
  9.times do
    column = []
    board.each { |row| column << row[counter] }
    counter += 1
    return 'Try again!' unless (1..9).to_a == column.sort
  end
  block = [[], [], [], [], [], [], [], [], []]
  board.each_with_index do |row, index|
    if index < 3
      block[0] << row[0, 3]
      block[1] << row[3, 3]
      block[2] << row[6, 3]
    elsif index >= 3 && index < 6
      block[3] << row[0, 3]
      block[4] << row[3, 3]
      block[5] << row[6, 3]
    else
      block[6] << row[0, 3]
      block[7] << row[3, 3]
      block[8] << row[6, 3]
    end
  end
  block.map! { |row| row.flatten.sort }
  block.each { |row| return 'Try again!' unless (1..9).to_a == row.flatten.sort }

  'Finished!'
end

puts done_or_not([[5, 3, 4, 6, 7, 8, 9, 1, 2],
                  [6, 7, 2, 1, 9, 5, 3, 4, 8],
                  [1, 9, 8, 3, 4, 2, 5, 6, 7],
                  [8, 5, 9, 7, 6, 1, 4, 2, 3],
                  [4, 2, 6, 8, 5, 3, 7, 9, 1],
                  [7, 1, 3, 9, 2, 4, 8, 5, 6],
                  [9, 6, 1, 5, 3, 7, 2, 8, 4],
                  [2, 8, 7, 4, 1, 9, 6, 3, 5],
                  [3, 4, 5, 2, 8, 6, 1, 7, 9]])
