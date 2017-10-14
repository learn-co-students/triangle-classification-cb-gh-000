class Triangle
  # write code here

  def initialize(a, b, c)
  	@a = a
  	@b = b
  	@c = c
  end

  def kind
  	if self.valid?
	  	if @a == @b && @b == @c
	  		:equilateral
	  	elsif @a == @b || @b == @c || @c == @a
	  		:isosceles
	  	else
	  		:scalene
	  	end
	else
		raise TriangleError
	end	
  end

  def valid?
  	@a + @b > @c && @b + @c > @a && @c + @a > @b && @a > 0 && @b > 0 && @c > 0 
  end
end

class TriangleError < StandardError

end