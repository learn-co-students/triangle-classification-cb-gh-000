class Triangle
  attr_accessor :first_side, :second_side, :third_side

  def initialize(first_side, second_side, third_side)
    @first_side = first_side
    @second_side = second_side
    @third_side = third_side
    raise TriangleError unless valid?
  end

  def valid?
    first_side + second_side > third_side &&
      first_side + third_side > second_side &&
      second_side + third_side > first_side &&
      first_side > 0 && second_side > 0 && third_side > 0
  end

  def kind
    if first_side == second_side && second_side == third_side
      :equilateral
    elsif first_side == second_side && second_side != third_side ||
      first_side == third_side && second_side != third_side ||
      second_side == third_side && first_side != second_side
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError

end
