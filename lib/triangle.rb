class Triangle
  attr_accessor :sideA, :sideB, :sideC
  
  def initialize(sideA, sideB, sideC)
    @sideA = sideA
    @sideB = sideB
    @sideC = sideC
  end
  
  def kind 
    if @sideA == @sideB == @sideC
      return :equilateral
    end
  end
  
  
  
  class TriangleError < StandardError
    
  end
  
end
