require "./car2"
class ToyotaCar<Car

  def initialize options
    options={brand:'honda'}.merge(options)
    super options
  end

  def engine
    "This engine is #{@engine}"
  end

  def turn_left
    p "my toyota"
    super
  end
end

# c1=ToyotaCar.new engine:"v8"
# puts c1.inspect



# class Honda

# end

# h=Honda.new
# h.extend Car
# ## super initialize
