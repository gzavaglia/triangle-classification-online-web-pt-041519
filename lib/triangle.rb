require_relative "../lib/triangle.rb"
class Triangle
  attr_accessor :sideA, :sideB, :sideC
  
  def initialize(sideA, sideB, sideC)
    if sideA <= 0 || sideB <= 0 || sideC <= 0
      raise TriangleError
    elsif sideA+sideB <= sideC || sideA+sideC <= sideB || sideC+sideB <= sideA
      raise TriangleError
    else 
      @sideA = sideA
      @sideB = sideB
      @sideC = sideC
    end
  end
  
  def kind 
    if @sideA == @sideB && @sideB == @sideC
      return :equilateral
    elsif @sideA == @sideB || @sideA ==@sideC || @sideB == @sideC
      return :isosceles
    elsif @sideA != @sideB && @sideA != @sideC && @sideB != @sideC
      return :scalene
    end
  end

  class TriangleError < StandardError
  end
  
end
