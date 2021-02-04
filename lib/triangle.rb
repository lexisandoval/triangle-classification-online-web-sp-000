class Triangle
  # write code here


  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if @length1 <= 0 || @length2 <= 0 || @length3 <= 0
      raise TriangleError
    elsif @length1 + @length2 <= @length3 || @length1 + @length3 <= @length2 || @length2 + @length3 <= @length1
      raise TriangleError
    else
      if @length1 == @length2 && @length1 == @length3
        return :equilateral
      elsif @length1 != @length2 && @length1 != @length3 && @length2 != @length3
        return :scalene
      else
        return :isosceles
      end
    end
  end

  class TriangleError < StandardError
  end

end
