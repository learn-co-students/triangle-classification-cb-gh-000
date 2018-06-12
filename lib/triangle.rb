class Triangle
  # write code 
  
  attr_accessor :a, :b, :c 
  
  def initialize(a, b, c)
    if !( a+b>c && b+c > a && c+a > b )
      raise TriangleError
    end 
    self.a = a
    self.b = b
    self.c = c 
    
  end 
  
  def kind
    if @a == @b && @b == @c && @c == @a 
      :equilateral
    elsif !(@a == @b) && !(@b == @c) && !(@c == @a) 
      :scalene
    else 
      :isosceles
    end 
  end 
  
  class TriangleError < StandardError

  end 
    
  
end