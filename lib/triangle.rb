class TriangleError < StandardError
  def invalid_length
    puts "The length entered is/are not valid"
  end
end

class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    if @side_a <= 0 || @side_b <= 0 || @side_c <= 0 || @side_a + @side_b  <= @side_c || @side_b + @side_c  <= @side_a || @side_a + @side_c  <= @side_b
      # begin
        raise TriangleError
      # rescue TriangleError => length
      #   length.invalid_length
      # end
    else
      if @side_a == @side_b && @side_b == @side_c
        @equilateral = true
        @isosceles = false
        @scalene = false
      elsif @side_a == @side_b || @side_b == @side_c || @side_a == @side_c
        @equilateral = false
        @isosceles = true
        @scalene = false
      else
        @equilateral = false
        @isosceles = false
        @scalene = true
      end
      @equilateral ? :equilateral : (@isosceles ? :isosceles : :scalene)
    end
  end

end
