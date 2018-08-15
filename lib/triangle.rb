class Triangle
  attr_accessor :length_side1, :length_side2, :length_side3
  
  def initialize(length_side1, length_side2, length_side3)
    @length_side1 = length_side1
    @length_side2 = length_side2
    @length_side3 = length_side3
  end
  
  def kind
    if ((@length_side1 + @length_side2) <= @length_side3 || (@length_side1 + @length_side3) <= @length_side2 || (@length_side3 + @length_side2) <= @length_side1)
      raise TriangleError
    end
    if @length_side1 == 0 && @length_side2 == 0 && @length_side3 == 0 
      raise TriangleError
    end
    if @length_side1 == @length_side2 && @length_side1 == @length_side3 && @length_side2 == @length_side3
      return :equilateral
    elsif @length_side1 == @length_side2 || @length_side1 == @length_side3 || @length_side3 == @length_side2
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
    # def message 
    #   "you must give the get_married method an argument of an instance of the person class!"
    # end
  end
end
