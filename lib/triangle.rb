require 'pry'
class Triangle
  # write code here
  attr_reader :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if ((length1+length2 <= length3) || (length2+length3 <= length1) || (length1+length3 <= length2)) || (length1 <= 0 || length2 <= 0 || length3 <= 0)
      raise TriangleError
      # begin
      #   raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      # end
    else
      if length1==length2 && length2==length3 && length1==length3
        :equilateral
      elsif length1==length2 || length2==length3 || length1==length3
        :isosceles
      else
        :scalene
      end
    end
  end

  class TriangleError < StandardError
    def message
      "invalid triangle"
    end
  end
end
