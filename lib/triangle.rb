class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    triangle_invalid
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || c == a
      :isosceles
    else
    :scalene
  end
end

  def triangle_invalid
    real_triangle = [(a + b > c),(b + c > a), (c + a > b)]
   [a, b, c].each{|s| real_triangle << false if s <= 0}
    raise TriangleError if real_triangle.include?(false)
  end



end
class TriangleError < StandardError
end
