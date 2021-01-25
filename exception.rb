class DivideByZeroError < StandardError
  def initialize(msg="Divide By zero Error")
    super
  end
end

class ExceptionHandling
  def self.raise_error
    begin
      puts "Testing"
    rescue StandardError => ex
      puts "Testing Error"
      # raise DivideByZeroError.new
      # retry
    else
      puts "ELSE"
    ensure
      puts "Ensure"
    end
  end
end

ExceptionHandling.raise_error
