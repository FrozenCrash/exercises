class Squares
  attr_reader :numbers
  def initialize(count)
    @numbers = count
  end

  def square_of_sum
    a = 0
    var = 1..(@numbers)
    var.each { |x| x += a }
    a**2 
    return a
  end

end