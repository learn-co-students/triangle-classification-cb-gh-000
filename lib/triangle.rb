class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    sides = [a, b, c].sort
    raise TriangleError if sides[0] <= 0 || sides[0] + sides[1] <= sides[2]

    if a == b && b == c
      :equilateral
    elsif a == c || a == b || b == c
      :isosceles
    else
      :scalene
    end
  end

end

class TriangleError < StandardError

end
