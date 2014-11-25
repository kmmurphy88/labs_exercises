class Calculator

  def self.add(x, y)
    return(x.to_f + y.to_f)
  end

  def self.subtract(x, y)
    return(x.to_f - y.to_f)
  end

  def self.multiply(x, y)
    return(x.to_f * y.to_f)
  end

  def self.divide(x, y)
    return(x.to_f / y.to_f)
  end

end

Calculator.new








  # def initialize
  #   puts "Please enter your inputs"
  # end

  # def additon(value_1, value_2)
  #   @value_1 + @value_2
  # end
  #
  # def subtraction(value_1, value_2)
  #   @value_1 - @value_2
  # end
  #
  # def multiplication(value_1, value_2)
  #   @value_1 * @value_2
  # end
  #
  # def division(value_1, value_2)
  #   @value_1 / @value_2
  #   exit if value_2 == 0
  # end
