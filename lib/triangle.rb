class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
      @a = a
      @b = b
      @c = c
  end

  def kind
      validate_tri
      if a == b && b == c
          :equilateral
      elsif a == b || b == c || a == c
          :isosceles
      else
          :scalene
      end
  end

  def validate_tri
      valid = [(a + b > c), (a + c > b), (b + c > a)]
      [a, b, c].each { |s| valid << false if s <= 0 }
      raise TriangleError if valid.include?(false)
  end

  class TriangleError < StandardError
      def message
          puts "This is not a valid Triangle!"
      end
  end
end
