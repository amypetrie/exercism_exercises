require "pry"
class Matrix
  attr_reader :input

  def initialize(input)
    @input = input
    @_matrix = nil
  end

  def matrix
    @_matrix ||= input.split("\n").reduce([]) do |memo, row|
      memo << row.split(" ").map{|letter| letter.to_i }
    end
  end

  def rows
    matrix
  end

  def columns
    matrix.transpose
  end

end
