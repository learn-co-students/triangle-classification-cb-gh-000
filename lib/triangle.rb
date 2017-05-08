class Triangle
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def invalid?
    return true if @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0
    return true if @side_1 + @side_2 <= @side_3 || @side_2 + @side_3 <= @side_1 || @side_1 + @side_3 <= @side_2
    return false
  end

  def kind
    return raise TriangleError if invalid?

    return :equilateral if @side_1 == @side_2 && @side_1 == @side_3
    return :isosceles if @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
    return :scalene
  end
end

class TriangleError < StandardError
end
