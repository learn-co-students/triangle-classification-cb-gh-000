class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 =side1
    @side2 =side2
    @side3=side3
  end
  def kind
    validate
    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side2==side3 || side1==side3
      :isosceles
    else
      :scalene
    end
  end
  def validate
    if (side1 + side2) > side3 && (side2 + side3) > side1 && (side1 + side3) > side2
    else
      raise TriangleError
    end

  end

  class TriangleError < StandardError
    def message
      "thats no triangle"
    end
  end
end
