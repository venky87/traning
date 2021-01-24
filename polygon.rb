class Polygon
  def initialize(width, length = 0)
    @width  = width
    @length = length
  end

  attr_reader :length, :width

  def area
    puts "Area of #{self.class} is #{calculate_area}"
  end

  private

  def calculate_area
    @width * @length
  end
end

class Rectangle < Polygon
end

class Square < Polygon
  private

  def calculate_area
    @width * @width
  end
end

class Triangle < Polygon
  private

  def calculate_area
    ( @width * @length)/2
  end
end

rectangle = Rectangle.new(10, 5)
rectangle.area

square = Square.new(5)
square.area

triange = Triangle.new(5, 4)
triange.area
