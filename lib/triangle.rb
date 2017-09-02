class Triangle

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    valid?
    if equilateral?
      :equilateral
    elsif isosceles?
      :isosceles
    elsif scalene?
      :scalene
    end
  end

  def equilateral?
    @a == @b && @a == @c ? true : false
  end

  def isosceles?
    @a == @b || @a == @c || @b == @c ? true : false
  end

  def scalene?
    @a != @b && @a != @c && @b != @c ? true : false
  end

  def valid?
    sides = [@a, @b, @c].sort
    if sides[0] < 0 || sides[0] + sides[1] <= sides[2]
      raise TriangleError
    end
    true
  end

end


class TriangleError < StandardError
end
