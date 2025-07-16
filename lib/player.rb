class Player
  def initialize(name, letter, board)
    @name = name
    @letter = letter
    @board = board
  end

  def play(row, column)
    @board.update_square(row, column, @letter)
  end
end
