class Triangle

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def valid?
    if @side_1 > 0 && @side_2 > 0 && @side_3 > 0
      if (@side_1 + @side_2) <= @side_3
        false
      elsif (@side_1 + @side_3) <= @side_2
        false
      elsif (@side_2 + @side_3) <= @side_1
        false
      else
        true
      end
    else
      false
    end
  end

  def kind
    if self.valid?
      if @side_1 == @side_2
        if @side_2 == @side_3
          :equilateral
        else
          :isosceles
        end
      elsif @side_1 == @side_3
        :isosceles
      elsif @side_2 == @side_3
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError

  end
end
