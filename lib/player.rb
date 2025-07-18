class Player
  def initialize(name, letter, board)
    @name = name
    @letter = letter
    @board = board
  end

  def to_s
    @name
  end

  def play(row, column)
    @board.update_square(row - 1, column - 1, @letter)
  end
end
