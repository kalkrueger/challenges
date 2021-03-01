#must take 3 sides
#all sides must be greater than 0
#2 smallest sides added together must be greater than or equal to 3rd side
#compare length of sides to determine what type of triangle

class Triangle
  attr_reader :kind

  def initialize(*sides)
    @sides = sides.sort
    confirm_triangle
  end

  def kind
    case @sides.uniq.size
    when 1 then "equilateral"
    when 2 then "isosceles"
    when 3 then "scalene"; end
  end

  private

  def confirm_triangle
    raise ArgumentError unless  @sides.size == 3 &&
                                @sides[0] > 0 &&
                                @sides[0] + @sides[1] >= @sides[2]
  end
end
