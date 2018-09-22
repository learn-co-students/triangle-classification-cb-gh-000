class Triangle
  # write code here

  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a <= 0 || @b <= 0 || @c <= 0
      begin
        raise TriangleError
      end
    elsif @a + @b <= @c || @a + @c <= @b || @b + @c <= @a
      begin
        raise TriangleError
      end
    elsif @a != @b && @a != @c && @b != @c
      return :scalene
    elsif @a == @b && @b == @c  && @a == @c
      return :equilateral
    else
      :isosceles
    end
  end

  class TriangleError < StandardError

  end
end
