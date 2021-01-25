class Vehicle
  def initialize(wheels:, seats:)
    @wheels = wheels
    @seats = seats
  end

  attr_accessor :wheels, :seats

  def moves
    "Bur bur burrrrrrrrrr!"
  end
end

class Car < Vehicle

end

class Bike < Vehicle
  def moves
    "Ghud ghud ghud ghud"
  end
end

car = Car.new(wheels: 4, seats: 5)
puts car.moves

bike= Bike.new(wheels: 2, seats: 2)
puts bike.moves
