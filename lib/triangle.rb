class Triangle
  # write code here

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  class TriangleError < StandardError

  end

  def kind
    if ((@s1 + @s2) > @s3 && (@s1 + @s3) > @s2 && (@s2 + @s3) > @s1) && @s1 > 0 && @s2 > 0 && @s3 > 0
      if @s1 == @s2 && @s2 == @s3
        return :equilateral
      elsif @s1 == @s2 || @s2 == @s3 || @s1 == @s3
        return :isosceles
      elsif @s1 != @s2 && @s2 != @s3 && @s1 != @s3
        return :scalene
      end
    else
      raise TriangleError
    end


  end
end
