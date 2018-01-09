class Triangle
  # write code here
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    valid?

    if a == b && a == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end
  end

  def valid?
    if a <= 0 || b <= 0 || c <= 0 || a + b <= c || a + c <= b || b + c <= a
      raise TriangleError
    else
      true
    end
  end
end

class TriangleError < StandardError
  def message
    "Invalid Triangle"
  end
end
