class Triangle

  attr_reader :sides

  def check_sides(sides)
    value = true
    sides.each_with_index do |s, i|
      if sides[i] + sides[(i+1)%3] <= sides[(i+2)%3]
        value = false
      end
    end
    value
  end

  def initialize(s1, s2, s3)
    @sides = [s1, s2, s3]
    if s1 == s2 and s2 == s3 and s1 != 0
      @kind = :equilateral
    elsif sides.uniq.size == 2
      @kind = :isosceles
    else
      @kind = :scalene
    end
  end

  def kind
    if @kind != :equilateral
      if @sides.any? {|s| s <= 0}
        raise TriangleError
      elsif !check_sides(@sides)
        raise TriangleError
      else
        @kind
      end
    else
      @kind
    end
  end

end

class TriangleError < StandardError

end
