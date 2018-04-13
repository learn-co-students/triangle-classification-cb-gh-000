class Triangle
  attr_accessor :side1, :side2, :side3

  # write code here
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if @side1.class != "Fixnum" || @side2.class != "Fixnum" || @side3.class != "Fixnum"
      raise TriangleError
    end

    if @size1 < 0 || @size2 < 0 || @size3 < 0
      raise TriangleError
    end

    if @side1 == @side2 && @side1 == @side3
      return :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
    # triangle error code

  end
end
