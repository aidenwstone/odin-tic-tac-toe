require_relative 'board'
require_relative 'player'

class Game
  def initialize
    @winner = nil
    @board = Board.new
    @player1 = Player.new('x', @board)
    @player2 = Player.new('o', @board)
  end
end
