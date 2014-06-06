class Car
  attr_reader :brand
  def initialize engine,tires=4
    @engine=engine
    @tires=tires
    @brand="toyota"
  end

  def engine
    @engine
  end

  def forward

  end

  def backward

  end

  def turn_left

  end

  def turn_right

  end

end
car1=Car.new "v8",4
puts car1.brand
