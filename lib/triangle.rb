class Triangle
  # triangle code
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def invalid_triangle
    if a<=0 || b<=0 || c<=0 || (a+b)<=c || (b+c)<=a || (a+c)<=b
      raise TriangleError
    end
  end

  def kind
    invalid_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || c == a
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
end
