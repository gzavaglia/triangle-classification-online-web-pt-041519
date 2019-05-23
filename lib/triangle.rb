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
    else 
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    end
  end
  
  
  
  class TriangleError < StandardError
    
  end
  
end
