require 'pry'
class Triangle
  # write code here
  attr_accessor :l1, :l2, :l3

  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    cat = self.valid
    if cat && @l1 == @l2 && @l2 == @l3
      :equilateral
    elsif cat && @l1 == @l2 || cat && @l1 == @l3 || cat && @l2 == @l3
      :isosceles
    elsif cat
      :scalene
    else
      raise TriangleError
    end
  end

  private

  def valid
    if @l1 != 0 && @l2 != 0 && @l3 != 0 && @l1 + @l2 > @l3 && @l2 + @l3 > @l1 && @l1 + @l3 > @l2
      true
    else
      false
    end
  end

  class TriangleError < StandardError
    # triangle error code
    puts 'Wrong'
  end


end

