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
      
    end
  end
  
  
  
  class TriangleError < StandardError
    
  end
  
end
