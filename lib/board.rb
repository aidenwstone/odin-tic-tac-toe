class Board
  def initialize
    @grid = Array.new(3) { Array.new(3, ' ') }
  end

  def draw
    @grid.each_with_index do |row, index|
      puts " #{row[0]} | #{row[1]} | #{row[2]}"
      puts '---+---+---' if index != 2
    end
  end
end
