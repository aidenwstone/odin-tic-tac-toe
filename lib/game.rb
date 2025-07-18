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

  def draw_board
    @board.draw
  end

  def play_turn
  end

  private

  def prompt_choice
    loop do
      puts "#{@current_player}, choose where to place your mark (row, column)"
      choice = gets.split(',')
      row = choice[0].to_i
      column = choice[1].to_i
      is_valid = (1..3).include?(row) && (1..3).include?(column)

      return { row: row, column: column } if is_valid

      puts 'Invalid input, try again'
    end
  end

  def switch_players
    @current_player = @current_player == @player1 ? @player2 : @player1
  end
end
