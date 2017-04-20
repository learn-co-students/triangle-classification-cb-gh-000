class Triangle
    attr_accessor :a, :b, :c

  def initialize(a, b, c)
      @a, @b, @c = a, b, c
  end

  def kind
      validate

      if @a == @b && @b == @c
        :equilateral
      elsif @a == @b || @a == @c || @b == @c
        :isosceles
      else
        :scalene
      end
  end

  def validate
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each { |s| real_triangle << false if s <= 0 }
    raise TriangleError if real_triangle.include?(false)
  end
end

class TriangleError < StandardError
end
