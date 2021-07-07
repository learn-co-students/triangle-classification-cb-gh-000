class Triangle
  # write code here
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a + @b > @c &&  @b + @c > @a && @a + @c > @b
      if @a == @b && @b == @c
        :equilateral
      elsif @a == @b || @b == @c || @a == @c
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

end

class TriangleError < StandardError
  def message
    "Not a valid triangle"
  end
end
