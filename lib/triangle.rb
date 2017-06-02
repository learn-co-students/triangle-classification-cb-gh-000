class Triangle
  attr_reader :kind

  def initialize(x, y, z)
    if !self.valid?(x, y, z)
      raise TriangleError
    end
    @kind = self.determine_kind(x, y, z)
  end
  def determine_kind(x, y, z)
    if x == y && y == z
      :equilateral
    elsif x == y || y == z || x == z
      :isosceles
    else
      :scalene
    end
  end
  def valid?(x, y, z)
    [x, y, z].all?{|num| num > 0} && !([x + y > z, y + z > x, x + z > y].include?(false))
  end
end
class TriangleError < StandardError
  def message

  end
end
