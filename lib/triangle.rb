class Triangle

  attr_reader :kind

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    if side1 == side2 && side2 == side3
      @kind = :equilateral
    elsif (side1 == side2) || (side2 == side3) || (side1 == side3)
      @kind = :isosceles
    else
      @kind = :scalene
    end
  end

  def kind
    if (@side1 <= 0 || @side2 <= 0 || @side3 <= 0 || @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side2 + @side3 <= @side1)
      raise TriangleError
    else
      @kind
    end
  end

end

class TriangleError < StandardError
  def message
    "Invalid triangle. The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. Further, each side must be larger than 0."
  end
end
