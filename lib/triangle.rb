class Triangle

  attr_accessor :a, :b, :c, :equilateral, :isosceles, :scalene


  def initialize(a, b, c)
    @sides = []
    @sides << self


  end

  def kind
    if self.same_values?
      @equilateral


    # if @sides.same_values?

    # elsif @sides
    #
    #
    # @isosceles
    # @scalene
  end
  end
end
