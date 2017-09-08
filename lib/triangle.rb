class Triangle
  # the sum of any two sides of a triangle must always exceed the lenghht of the
  # third side. Each side must also be larger than 0.

  def initialize(length_one,length_two,length_three)
    @l_1 = length_one
    @l_2 = length_two
    @l_3 = length_three
  end

  # returns :equilateral, :isosceles, or :scalene
  # raises a TriangleError if the triangle is invalid
  # a nice refactor would be to have #validate_triangle as a separate
  # helper function. Official solution v slick...
  def kind
    if (@l_1 + @l_2 <= @l_3) || (@l_2 + @l_3 <= @l_1) || (@l_1 + @l_3 <= @l_2)
      raise TriangleError
    elsif @l_1 <= 0 || @l_2 <= 0 || @l_3 <= 0
      raise TriangleError
    elsif @l_1 == @l_2 && @l_2 == @l_3
      :equilateral
    elsif @l_1 != @l_2 && @l_2 != @l_3 && @l_1 != @l_3
      :scalene
    else
      :isosceles
    end
  end

end

class TriangleError < StandardError
end
