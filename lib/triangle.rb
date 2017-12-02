class Triangle
  attr_reader :sides
  def initialize(a,b,c)
    @sides = [a,b,c].sort
  end
  def kind
    if @sides[2] >= @sides[0] + @sides[1]
      raise TriangleError
    end
    case
    when self.sides.uniq.length == 1
      :equilateral
    when self.sides.uniq.length == 2
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
 # triangle error code
end
