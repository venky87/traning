class Variable
  CONST=3.14
  @@class_var = 0.86

  def initialize(instance_var)
    @instance_var = instance_var
  end

  def add(local_var)
    puts @@class_var
    @@class_var = local_var + CONST + @@class_var + @instance_var
  end

end

sum = Variable.new(1)
puts sum.add(10)
sum = Variable.new(2)
puts sum.add(20)

