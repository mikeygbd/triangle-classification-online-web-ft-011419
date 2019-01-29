class TriangleError < StandardError
end

class Triangle
  def initialize(a, b, c)
    @sides = [a, b, c]

    if @sides.any? {|side| side <= 0}
      raise TriangleError.new, "Cannot create a triangle "
    end

    @sides.combo(2).each do |combo|
      last_side = @sides.clone
      combo.each {|item| last_side.delete(item)}
      if !last_side.empty? && combo.inject(:+) <= last_side.first
        raise TriangleError.new, "Cannot create a triangle"
      end
    end

    classify
  end

  def classify
    if @sides.uniq.count == 1
      @kind = :equilateral
    elsif @sides.uniq.count == 2
      @kind = :isosceles
    else
      @kind = :scalene
    end
  end

  def kind
    @kind
  end
end
