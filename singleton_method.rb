train = String.new("train")

car = String.new("car")

# Singleton method for car object
def car.length
  40
end

puts "Train lenght #{train.length}"

puts "Car length #{car.length}"
