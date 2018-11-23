class Triangle
  # write code here

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c

  end

  attr_accessor :a, :b, :c
  attr_reader :type

  def kind
    if @a+@b <= @c ||
       @b+@c <= @a ||
       @a+@c <= @b then

       begin
         raise TriangleError
       end ## if_error

     elsif @a == @b && @a == @c
       return :equilateral
     elsif @a == @b ||
       @b == @c ||
       @a == @c then

       return :isosceles

     else
       return :scalene

     end ## if_else end
  end ## def_kind

  class TriangleError < StandardError
  end


end # class Triangle
