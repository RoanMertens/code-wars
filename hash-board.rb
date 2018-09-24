# puzzle class in which gravity puts all hashes as far down as possible.
class GravityPuzzleEm
  def solve(board)
    tilted = columnize(board)
    sorted = rownize(tilted)
    show_board(sorted)
  end

  # take the elements from their row and putting them in a column
  def columnize(board)
    columns = []
    board.each_with_index do |row, index|
      row.length.times { columns << '' } if index.zero?
      row.split('').each_with_index { |char, i| columns[i] << char }
    end
    sorting(columns)
  end

  # sorting the column
  def sorting(board)
    board.map { |row| row.split('').sort.reverse.join }
  end

  # take the elements from their column and putting them in a row
  def rownize(board)
    columns = []
    board.each_with_index do |row, index|
      row.length.times { columns << '' } if index.zero?
      row.split('').each_with_index { |char, i| columns[i] << char }
    end
    columns
  end

  def show_board(board)
    board.each { |box| puts box }
  end
end

puzzle = GravityPuzzleEm.new
puts 'First box:'
puzzle.solve(['#', '.', '.'])
puts 'Second box:'
puzzle.solve(['##', '.#', '#.'])
puts 'Third box:'
puzzle.solve(['..#.#', '#.#..', '...##'])

# ['..#.#', '#.#..', '...##']. each { |string| puts string }
