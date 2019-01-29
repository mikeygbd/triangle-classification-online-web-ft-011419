class Triangle

  attr_accessor :side1, :side2, :side3, :equilateral, :isosceles, :scalene


  def initialize(side1, side2, side3)
    @sides = []
    @sides << self


  end

  def kind

    if @sides.same_values?
      @equilateral
    # elsif @sides
    #
    #
    # @isosceles
    # @scalene
  end
  end
end
