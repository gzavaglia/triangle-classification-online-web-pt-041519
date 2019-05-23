require_relative "../lib/triangle.rb"
class Triangle
  attr_accessor :sideA, :sideB, :sideC
  
  def initialize(sideA, sideB, sideC)
    @sideA = sideA
    @sideB = sideB
    @sideC = sideC
  end
  
  def kind 
    if @sideA == @sideB && @sideB == @sideC
      return :equilateral
    elsif @sideA == @sideB || @sideA ==@sideC || @sideB == @sideC
      return :isosceles
    elsif @sideA != @sideB && @sideA != @sideC && @sideB != @sideC
      return :scalene
    elsif @sideA < 0 || @sideB < 0 || @sideC < 0
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    end
  end
  
  
  
  class TriangleError < StandardError
    def message 
      "you must give the get_married method an argument of an instance of the person class!"
    end
  end
  
end
