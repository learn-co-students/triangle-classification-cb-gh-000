class Triangle
  attr_accessor :a, :b, :c
  def initialize(a,b,c)
    @a = a
    @b = b
    @c= c
  end

  def kind
    is_valid
    if @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @a == @c || @b == @c
      :isosceles
    else
      :scalene
    end
  end
  def is_valid
    rule = [(@a + @b > @c), (@a + @c > @b), (@b + @c > @a)]
    [@a,@b,@c].each do |side|
      rule << false if side <= 0
      raise TriangleError if rule.include?(false)
    end
  end
  class TriangleError < StandardError
  end
end
