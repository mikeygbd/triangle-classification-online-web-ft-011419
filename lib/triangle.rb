class Triangle

  attr_accessor :a, :b, :c, :equilateral, :isosceles, :scalene


  def initialize(a, b, c)
    @sides = []
    @sides << self


  end

  def kind(a, b, c)
    triangles = {equilateral: [60,60,60], isosceles: [0], scalene: [0]}
    angle_a = (Math.acos((two**2+three**2-one**2)/(2*two*three).to_f)*180/Math::PI).round(2)
    angle_b = (Math.acos((three**2+one**2-two**2)/(2*three*one).to_f)*180/Math::PI).round(2)
    angle_c = (Math.acos((one**2+two**2-three**2)/(2*one*two).to_f)*180/Math::PI).round(2)
    if angle_a && angle_b == 60
      return :equilateral, triangles[:equilateral]
    elsif angle_a != angle_b && angle_b != angle_c
      triangles[:scalene] = [angle_a, angle_b, angle_c]
      return :scalene, triangles[:scalene]
    else
      triangles[:isosceles] = [angle_a, angle_b, angle_c]
      return :isosceles, triangles[:isosceles]
    end
  end


    # if @sides.same_values?

    # elsif @sides
    #
    #
    # @isosceles
    # @scalene
  end
  end
end
