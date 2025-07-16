require_relative 'board'
require_relative 'player'

class Game
  attr_reader :winner

  def initialize(name1, name2)
    @winner = nil
    @board = Board.new
    @player1 = Player.new(name1, 'x', @board)
    @player2 = Player.new(name2, 'o', @board)
    @current_player = @player1
  end
end
