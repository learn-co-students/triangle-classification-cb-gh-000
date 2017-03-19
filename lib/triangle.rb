class Triangle
  # write code here
  attr_reader :s1, :s2, :s3
  
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def valid?
    (self.s1 > 0 && self.s2 > 0 && self.s3 > 0) && 
    ((self.s1 + self.s2) > self.s3) &&
    ((self.s1 + self.s3) > self.s2) &&
    ((self.s3 + self.s2) > self.s1)
  end

  def kind
    if self.valid?
      if self.s1 == self.s2 && self.s2 == self.s3
        type = :equilateral
      elsif self.s1 == self.s2 || self.s1 == self.s3 || self.s2 == self.s3
        type = :isosceles
      else
        type = :scalene
      end
      type
    else
      raise TriangleError
    end
  end
end

class TriangleError < StandardError
end