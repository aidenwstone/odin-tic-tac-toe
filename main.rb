require_relative 'lib/game'

game = Game.new('Player 1', 'Player 2')
while game.winner.nil?
end

puts "The winner is #{game.winner}!"
