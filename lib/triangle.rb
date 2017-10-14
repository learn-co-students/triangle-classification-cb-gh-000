class Triangle
  # write code here

  attr_accessor :first, :second, :third

  def initialize(first, second, third)
    @first = first
    @second = second
    @third = third
  end

  def kind
    validate
    if first == second && second == third
      :equilateral
    elsif first == second || second == third || first == third
      :isosceles
    else
      :scalene
    end
  end

  def validate
    fulfils_triangle_inequality = first + second > third && first + third > second && second + third > first
    greater_than_zero = first > 0 && second > 0 && third > 0
    raise TriangleError if !fulfils_triangle_inequality || !greater_than_zero
  end

end

class TriangleError < StandardError
end
