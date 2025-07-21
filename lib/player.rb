# frozen_string_literal: true

# The Player class manages a player.
# This class is designed to be used with a Game and Board object.
class Player
  def initialize(name, letter, board)
    @name = name
    @letter = letter
    @board = board
  end

  def to_s
    "#{@name} (#{@letter})"
  end

  def play(row, column)
    @board.update_square(row - 1, column - 1, @letter)
  end
end
