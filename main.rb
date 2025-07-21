# frozen_string_literal: true

require_relative 'lib/game'

print 'Enter a name for player 1: '
name1 = gets.chomp
print 'Enter a name for player 2: '
name2 = gets.chomp

game = Game.new(name1, name2)
game.draw_board

while game.winner.nil?
  game.play_turn
  game.draw_board
end

puts game.winner == 'nobody' ? "It's a tie!" : "The winner is #{game.winner}!"
