class Player
  def initialize(letter, board)
    @letter = letter
    @board = board
  end

  def play(row, column)
    @board.update_square(row, column, @letter)
  end
end
