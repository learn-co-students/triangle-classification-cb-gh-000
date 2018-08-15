class Triangle
  attr_accessor :length_side1, :length_side2, :length_side3
  
  def initialize()
  end
  
  def kind 
    if @length_side1 == @length_side2 && @length_side1 == @length_side3 && @length_side2 == @length_side3
      return :equilateral
    elsif @length_side1 == @length_side2 || @length_side1 == @length_side3 || @length_side3 == @length_side2
      return :isosceles
    elsif 
    return :scalene
    end
  end
end
