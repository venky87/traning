class Rectangle
  attr_writer :length, :breadth
  attr_reader :area

  def compute_area
    @area = @length.to_i * @breadth.to_i
  end
end

rectangle = Rectangle.new
rectangle.length = 10
rectangle.breadth = 5
rectangle.compute_area
puts rectangle.area
