class TriangleError < StandardError
end

class Triangle
  # write code here

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a, @b, @c = a, b, c
  end

  def kind
    min, min2, max = [@a, @b, @c].sort
    if @a < 0 || @b < 0 || @c < 0 || min + min2 <= max
      raise TriangleError
    end

    if @a == @b && @b == c
      :equilateral
    elsif @a == @b || @a == @c || @b == @c
      :isosceles
    else
      :scalene
    end
  end

end
