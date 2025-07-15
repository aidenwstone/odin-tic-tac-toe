class Board
  def initialize
    @grid = Array.new(3) { Array.new(3, ' ') }
  end

  def draw
    @grid.each_with_index do |row, index|
      puts " #{row.join(' | ')} "
      puts '---+---+---' if index != 2
    end
  end

  def update_square(row, column, letter)
    return unless @grid.dig(row, column) == ' '

    @grid[row][column] = letter
  end

  def winner?(row, column); end
end
