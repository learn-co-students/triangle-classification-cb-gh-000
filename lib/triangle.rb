class Triangle
  # write code here
  def initialize *args
    @vertises = args.sort
  end

  def kind
    return :equilateral  if @vertises.uniq.size == 1 && !erronous?
    return :isosceles    if (@vertises.uniq.size == 2) && !erronous?
    return :scalene      if pifagor? && !erronous?
    raise TriangleError  if erronous?
    return :scalene
  end

  def pifagor?
    @vertises[0..1].map{|vertis| vertis**2}.reduce(&:+) == @vertises.last**2
  end

  def erronous?
    (@vertises[0..1].reduce(&:+) <= @vertises.last) || @vertises.any?{|vert| vert <= 0}
  end
end

class TriangleError < StandardError
end
