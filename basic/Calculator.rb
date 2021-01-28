class Calculator
  
  def initialize(name = "unknown")
    @name = name
  end

  def add(a, b)
    return a + b
  end

  def minus(a, b)
    return a - b
  end

  def multiple(a, b)
    return a * b
  end

  def divide(a, b)
    return a / b
  end

  def getName 
    return @name
  end
  
end

cal1 = Calculator.new("1번 계산기");

puts cal1.getName
puts '--------------'
puts cal1.add(4,3)
puts cal1.multiple(4,3)
puts cal1.minus(4,3)
puts cal1.divide(4,3)

