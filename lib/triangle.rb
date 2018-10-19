class Triangle
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def error_handle
    begin
      raise TriangleError
#    rescue TriangleError => error
#        puts error.message
    end
  end

  def kind
    triangle_array = [@side_one, @side_two, @side_three].sort

    if triangle_array == [0, 0, 0]
      error_handle
    elsif triangle_array.any? { |e| e < 0  }
      error_handle
    elsif triangle_array[0] + triangle_array[1] <= triangle_array[2]
      error_handle
    else
      if triangle_array.all? { |e| e == triangle_array[0] }
        :equilateral
      elsif triangle_array[0] == triangle_array[1] || triangle_array[1] == triangle_array[2]
        :isosceles
      else
        :scalene
      end
    end
  end

  class TriangleError < StandardError
    def message
      "Illegal triangle length combination"
    end
  end
end
