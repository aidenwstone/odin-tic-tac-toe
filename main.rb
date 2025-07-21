# frozen_string_literal: true

require_relative 'lib/game'

game = Game.new('Player 1', 'Player 2')
game.draw_board

while game.winner.nil?
  game.play_turn
  game.draw_board
end

puts game.winner == 'nobody' ? "It's a tie!" : "The winner is #{game.winner}!"
