class Triangle
  # write code here

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    sides = [@a, @b, @c]
    invalid = sides.any? { |side|  !side.is_a?(Numeric) || side <= 0 }
    raise TriangleError if invalid

    sides.sort! # Now, first is smallest, last is biggest.
    invalid = (sides.first + sides[1]) <= sides.last
    raise TriangleError if invalid

    if @a == @b && @b == @c
      :equilateral
    elsif sides[1] == sides.last
      :isosceles
    else
      :scalene
    end
  end

end

class TriangleError < StandardError
end
