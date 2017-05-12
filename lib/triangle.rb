class Triangle
  # write code here
  attr_accessor :a,:b,:c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a+@b <= @c || @a+@c<=@b || @b+@c<=@a
      raise TriangleError
    elsif @a==@b and @b==@c and @c==@a then
     :equilateral
    elsif @a==@b || @b==@c || @c==@a
     :isosceles
    elsif @a!=@b and @b!=@c and @c!=@a
     :scalene
    end
  end

end

class TriangleError < StandardError

end
