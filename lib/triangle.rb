class Triangle
    attr_accessor :side1, :side2, :side3, :pair1, :pair2, :pair3

    def initialize(one, two, three)
        @side1 = one
        @side2 = two
        @side3 = three

        @pair1 = one + two
        @pair2 = one + three
        @pair3 = two + three

    end

    def kind
        if @pair1 <= @side3 || @pair2 <= @side2 || @pair3 <= @side1
                raise TriangleError
        elsif @side1 == 0 || @side2 == 0 || @side3 == 0
                raise TriangleError
        elsif [@side1, @side2, @side3].uniq.length == 3
            :scalene
        elsif [@side1, @side2, @side3].uniq.length == 2
            :isosceles
        else
            :equilateral
        end
    end
end

class TriangleError < StandardError
    def message
        "Length of any two sides of triangle must be longer than the third side, and lengths of all sides must be longer than 0."
    end
end
