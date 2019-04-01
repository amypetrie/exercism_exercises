require "pry"
class Grains

  def self.board_grains
    board = Array.new(64,0)
    board[0] = 1
    board.each_index do |i|
      board[i+1] = board[i] * board[i]
    end
  binding.pry
  end

  def self.square(square_num)
    board_grains
  end

end
