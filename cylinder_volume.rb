class Cylinder
  PI = 3.14.freeze

  def initialize(radius:)
    @radius = radius
  end

  def volume(height:)
    PI * radius_square * height
  end


  def radius_square
    ( @radius * @radius )
  end

end

cylinder = Cylinder.new(radius: 10)
volume = cylinder.volume(height: 20)
puts volume
