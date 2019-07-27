class Triangle

  attr_accessor :sideOne, :sideTwo, :sideThree

  def initialize(sideOne, sideTwo, sideThree)
    @sideOne = sideOne
    @sideTwo = sideTwo
    @sideThree = sideThree
  end

  def kind
    if ((sideOne > 0 && sideTwo > 0 && sideThree > 0) && (sideOne + sideTwo > sideThree) && (sideTwo + sideThree > sideOne) && (sideOne + sideThree > sideTwo))
      if(sideOne == sideTwo && sideTwo == sideThree)
        return :equilateral
      elsif (sideOne == sideTwo || sideTwo == sideThree || sideOne == sideThree)
        return :isosceles
      else
        return :scalene
      end

    else
      raise TriangleError
    end
  end



  class TriangleError < StandardError
    # triangle error code
  end
end
