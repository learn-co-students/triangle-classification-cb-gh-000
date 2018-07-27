class Triangle
  attr_accessor :side1, :side2, :side3
  def initialize(side1,side2,side3)
    if (side1<=0 || side2<=0 || side3<=0)
      raise TriangleError
    end

    if !(side1+side2>side3 && side1+side3>side2 && side2+side3>side1)
      raise TriangleError
    end

    @side1 = side1
    @side2 = side2
    @side3 = side3

  end

  def kind
    eq_check = [@side2,@side3].all? { |e| e==@side1  }
    if eq_check
      return :equilateral
    end

    iso_check = @side1==@side2 || @side1==@side3 || @side2==@side3
    if iso_check
      return :isosceles
    end

    sca_check = @side1!=@side2 && @side1!=@side3 && @side2!=@side3
    if sca_check
      return :scalene
    end

  end

  class TriangleError < StandardError
    def message
      "Triangle Error!"
    end
  end
end
