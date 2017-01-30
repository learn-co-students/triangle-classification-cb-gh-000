require "pry"

class Triangle
  # write code here
  def initialize(first, second, third)
    @sides = []
    @sides << first << second << third
    @sides.sort!
  end

  def kind
    if @sides.first > 0 && @sides.first + @sides[1] > @sides.last
      @sides.first == @sides.last ? :equilateral : (@sides.first == @sides[1] || @sides[1] == @sides[2] ? :isosceles : :scalene)
    else
      raise TriangleError
    end
  end
end

class TriangleError < StandardError
  
end