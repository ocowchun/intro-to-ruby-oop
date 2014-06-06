class Car
  attr_reader :brand
  def initialize options
    @engine=options[:engine]|| "v8"
    @tires=options[:tires]|| "4"
    @brand=options[:brand]
  end

  def engine
    @engine
  end

  def forward
    p "move forward"
  end

  def backward
    p "move backward"
  end

  def turn_left
    p "turn left"
  end

  def turn_right
    p "turn right"
  end

end
# o={ engine:"v6",tires:6}
# car1=Car.new engine:"v6",tires:6

# puts car1.inspect
