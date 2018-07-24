
class Triangle

  attr_accessor :side1, :side2, :side3, :sides

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3

    @sides = [@side1, @side2, @side3].sort
  end

  def valid?
    (@sides.uniq.length == 2 && @sides[0] + @sides[1] > @sides[2]) || (@sides[0] + @sides[1] > @sides[2] && @sides[0] > 0)
  end

  def kind
    if self.valid?

      case true
      when @sides.uniq.length == 1
        return :equilateral
      when @sides.uniq.length == 2
        return :isosceles
      when @sides.uniq.length == 3
        return :scalene
      end

    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    def message
      "This is not a valid triangle."
    end
  end

end
