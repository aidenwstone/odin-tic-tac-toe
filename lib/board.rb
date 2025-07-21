# frozen_string_literal: true

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

  def winner?(row, column)
    letter = @grid[row - 1][column - 1]

    row_match?(row - 1, letter) || column_match?(column - 1, letter) || diagonal_match?(letter)
  end

  def tie?
    @grid.all? { |row| row.none?(' ') }
  end

  private

  def row_match?(row, letter)
    @grid[row].all?(letter)
  end

  def column_match?(column, letter)
    @grid.collect { |row| row[column] }.all?(letter)
  end

  def diagonal_match?(letter)
    foward_diagonal = [@grid[0][0], @grid[1][1], @grid[2][2]]
    backward_diagonal = [@grid[0][2], @grid[1][1], @grid[2][0]]

    foward_diagonal.all?(letter) || backward_diagonal.all?(letter)
  end
end
